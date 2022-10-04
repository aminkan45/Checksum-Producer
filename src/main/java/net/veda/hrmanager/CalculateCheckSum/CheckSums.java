/*
 * Copyright 2022 VEDA GmbH. All rights reserved.
 * Use is subject to license terms.
 */
package net.veda.hrmanager.CalculateCheckSum;

import net.veda.hrmanager.InterFace.Checksum;
import net.veda.hrmanager.Utils.CheckSumUtils;
import net.veda.hrmanager.Utils.DataModel;
import net.veda.hrmanager.Utils.Enums.UtilRegex;

import java.io.File;
import java.io.FileInputStream;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;

import static net.veda.hrmanager.Utils.Enums.MessageDigestType.SHA_256;

/**
 * @author Amin Mohamed
 */
public class CheckSums  implements Checksum {
    public CheckSums() {
    }
    private final CheckSumUtils checkSumUtils = new CheckSumUtils();
    /**
     *this calculates the checksum of the file, and it also gets the old checksum in the File and writes into the DataModel
     * @param MessageDigestType
     * @param filePath
     * @return
     */
    public DataModel getFileChecksum(String MessageDigestType, String filePath) {
        try {
            DataModel dataModel = new DataModel();
            if (checkSumUtils.isNotEmpty(filePath) && checkSumUtils.isValidPath(filePath)) {
                File file = new File(filePath);
                if (checkSumUtils.isEmpty(MessageDigestType)) {
                    MessageDigestType = SHA_256.getType();
                }
                MessageDigest digest = MessageDigest.getInstance(MessageDigestType);
                //Get file input stream for reading the file content
                FileInputStream fis = new FileInputStream(file);
                //Create byte array to read data in chunks
                byte[] byteArray = new byte[1024];
                int bytesCount = 0;
                //Read file data and update in message digest
                while ((bytesCount = fis.read(byteArray)) != -1) {
                    String line = new String(byteArray, StandardCharsets.UTF_8);
                    if (line.contains(UtilRegex.checkSumCommentsStartsWith())) {
                        int index = line.indexOf(UtilRegex.checkSumCommentsEndsWith());
                        if (index >= 0) {
                            dataModel.setOldCheckSumInFile(line.substring(7, index));
                            line = line.substring(index + 3);
                            byteArray = line.getBytes();
                            bytesCount = byteArray.length;
                        }
                    }
                    digest.update(byteArray, 0, bytesCount);
                }
                //close the stream; We don't need it now.
                fis.close();
                // bytes to hex
                StringBuilder checksum = new StringBuilder();
                for (byte b : digest.digest()) {
                    checksum.append(String.format("%02x", b));
                }
                //return complete hash
                dataModel.setNewlyCalculateChecksum(checksum.toString());
                return dataModel;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
