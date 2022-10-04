/*
 * Copyright 2022 VEDA GmbH. All rights reserved.
 * Use is subject to license terms.
 */
package net.veda.hrmanager.PutCheckSumIntoFile;

import net.veda.hrmanager.ChangesInFile.CheckForChanges;
import net.veda.hrmanager.Utils.CheckSumUtils;
import net.veda.hrmanager.Utils.DataModel;
import net.veda.hrmanager.Utils.Enums.UtilRegex;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import java.io.File;
import java.util.Objects;

import static net.veda.hrmanager.Utils.Enums.UtilRegex.*;

/**
 * @author Amin Mohamed
 */
public class InsertCheckSumIntoFile {
    public InsertCheckSumIntoFile() {
    }
    public static Log log = LogFactory.getLog(InsertCheckSumIntoFile.class);
    private final CheckSumUtils checkSumUtils = new CheckSumUtils();
    private final CheckForChanges checkForChanges = new CheckForChanges();
    private final FilesReader fileReader = new FilesReader();

    /***
     *
     * @param filePath
     * @return
     */
    public boolean writeCheckSumIntoFiles(String filePath) {
        if (checkSumUtils.isNotEmpty(filePath) && checkSumUtils.isValidPath(filePath)) {
            try {
                boolean result = false;
                int count = 0;
                if (checkSumUtils.isNotEmpty(filePath) && checkSumUtils.isValidPath(filePath + UtilRegex.BACK_SLASH.getValue() + SQL_FILES_FOLDER_NAME.getValue())) {
                    File file = new File(filePath + UtilRegex.BACK_SLASH.getValue() + SQL_FILES_FOLDER_NAME.getValue());
                    File[] files = file.listFiles();
                    for (int i = 0; i < Objects.requireNonNull(files).length; i++) {
                        DataModel dataModel = checkForChanges.verifyCheckSum(files[i].getAbsolutePath());
                        if (dataModel.isChanged()) {
                            dataModel.setNewlyCalculateChecksumWithComments(checkSumCommentsStartsWith() + (checkSumUtils.isEmpty(dataModel.getNewlyCalculateChecksum()) ? EMPTY.getValue() : dataModel.getNewlyCalculateChecksum()) + UtilRegex.checkSumCommentsEndsWith());
                            dataModel.setOldCheckSumInFileWithComments(checkSumCommentsStartsWith() + (checkSumUtils.isEmpty(dataModel.getOldCheckSumInFile()) ? EMPTY.getValue() : dataModel.getOldCheckSumInFile()) + UtilRegex.checkSumCommentsEndsWith());
                            result = fileReader.readAndWrite(files[i].getAbsolutePath(), dataModel.getOldCheckSumInFileWithComments(), dataModel.getNewlyCalculateChecksumWithComments());
                        }
                        count = i;
                    }
                    return result && (count == files.length - 1);
                }
                return false;
            } catch (Exception e) {
                e.printStackTrace();
                log.error("Cause : "+e.getCause());
                log.error("Message : "+e.getMessage());
                return false;
            }
        }
        return false;
    }

}
