/*
 * Copyright 2022 VEDA GmbH. All rights reserved.
 * Use is subject to license terms.
 */
package net.veda.hrmanager.PutCheckSumIntoFile;

import net.veda.hrmanager.InterFace.FileReaders;
import net.veda.hrmanager.Utils.CheckSumUtils;

import java.io.*;
import java.util.ArrayList;

import static net.veda.hrmanager.Utils.Enums.Extensions.getSqlExtension;
import static net.veda.hrmanager.Utils.Enums.UtilRegex.VARIATIONAL;

/**
 * @author Amin Mohamed
 */
public class FilesReader implements FileReaders {

    public FilesReader() {
    }

    private final CheckSumUtils checkSumUtils = new CheckSumUtils();

    /**
     * this method reads the data from an existing File to newly created File
     *
     * @param path
     * @param oldChecksumInFileWithComments
     * @param newCheckSumWithComments
     * @return
     */
    public boolean readAndWrite(String path, String oldChecksumInFileWithComments, String newCheckSumWithComments) {
        try {
            boolean result = false;
            boolean changedHappened = false;
            ArrayList<String> list = new ArrayList<>();
            if (checkSumUtils.isNotEmpty(path) && checkSumUtils.isValidPath(path)) {
                // Reading data from file
                File readingFile = new File(path);
                if (readingFile.canRead() && readingFile.isFile() && readingFile.getName().contains(getSqlExtension())) {
                    BufferedReader reader = new BufferedReader(new FileReader(path));
                    // Writing data into the new File
                    File writingFile = new File(readingFile.getAbsolutePath() + VARIATIONAL.getValue());
                    // if File doesnt exists, then create it
                    if (!writingFile.exists()) {
                        writingFile.createNewFile();
                    }
                    FileWriter fileWriter = new FileWriter(writingFile.getAbsoluteFile());
                    BufferedWriter write = new BufferedWriter(fileWriter);
                    String count;
                    while ((count = reader.readLine()) != null) {
                        if (count.equals(oldChecksumInFileWithComments)) {
                            count = newCheckSumWithComments;
                            changedHappened = true;
                        }
                        list.add(count);

                    }
                    writingFile(newCheckSumWithComments, changedHappened, list, write);
                    write.flush();
                    write.close();
                    reader.close();
                    if (writingFile.exists() && readingFile.exists()) {
                        result = checkSumUtils.renameAndDelete(readingFile, writingFile);
                    }
                }
            }
            return result;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return false;
    }

    private void writingFile(String newCheckSumWithComments, boolean changedHappened, ArrayList<String> list, BufferedWriter write) throws IOException {
        try {
            for (String value : list) {
                if (!changedHappened) {
                    write.write(newCheckSumWithComments);
                    write.newLine();
                    changedHappened = true;
                }
                write.write(value);
                write.newLine();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}


