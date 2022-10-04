/*
 * Copyright 2022 VEDA GmbH. All rights reserved.
 * Use is subject to license terms.
 */
package net.veda.hrmanager.ChangesInFile;

import net.veda.hrmanager.CalculateCheckSum.CheckSums;
import net.veda.hrmanager.Utils.CheckSumUtils;
import net.veda.hrmanager.Utils.DataModel;
import net.veda.hrmanager.Utils.Enums.MessageDigestType;
import net.veda.hrmanager.Utils.Enums.UtilRegex;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

import static net.veda.hrmanager.Utils.Enums.UtilRegex.checkSumCommentsEndsWith;
import static net.veda.hrmanager.Utils.Enums.UtilRegex.checkSumCommentsStartsWith;

/**
 * @author Amin Mohamed
 */
public class CheckForChanges {
    public CheckForChanges() {
    }

    private final CheckSumUtils checkSumUtils = new CheckSumUtils();
    private final CheckSums checkSums = new CheckSums();

    /**
     * this Method checks if there's been changes in File,
     * and then it  compares old checksum in File to the newly calculated checksum
     * if they are not equal that means the newly calculated checksum has to be put in File
     * and the old checksum muss be removed from File
     *
     * @param path
     * @return
     */
    public DataModel verifyCheckSum(String path) {
        DataModel dataModel = null;
        try {
            if (checkSumUtils.isNotEmpty(path) && checkSumUtils.isValidPath(path)) {
                dataModel = checkSums.getFileChecksum(MessageDigestType.SHA_256.getType(), path);
                if (checkSumUtils.isNotEmpty(dataModel.getNewlyCalculateChecksum())) {
                    if (checkSumUtils.isEmpty(dataModel.getOldCheckSumInFile())) {
                        dataModel.setChanged(true);
                    } else {
                        dataModel.setChanged(!dataModel.getOldCheckSumInFile().equals(dataModel.getNewlyCalculateChecksum()));
                    }
                }
            }
        } catch (
                Exception e) {
            e.printStackTrace();
        }
        return dataModel;
    }

    private String getCheckSumInfile(String path) {
        if (checkSumUtils.isNotEmpty(path) && checkSumUtils.isValidPath(path)) {
            try (BufferedReader br = new BufferedReader(new FileReader(path))) {
                StringBuilder sb = new StringBuilder();
                String line = br.readLine();
                while (line != null && line.contains(checkSumCommentsStartsWith())) {
                    if (line.startsWith(checkSumCommentsStartsWith()) && line.endsWith(checkSumCommentsEndsWith())) {
                        sb.append(getReplace(line));
                    }
                    line = br.readLine();
                }
                return sb.toString();
            } catch (IOException e) {

                e.printStackTrace();
            }
        }
        return null;
    }

    private String getReplace(String value) {
        try {
            if (checkSumUtils.isNotEmpty(value)) {
                if (value.contains(checkSumCommentsStartsWith())) {
                    value = value.replace(checkSumCommentsStartsWith(), UtilRegex.EMPTY.getValue());
                }
                if (value.contains(checkSumCommentsEndsWith())) {
                    value = value.replace(checkSumCommentsEndsWith(), UtilRegex.EMPTY.getValue());
                }
            }
        } catch (Exception e) {
            e.getMessage();
            e.printStackTrace();
        }
        return value;
    }


}
