package net.veda.hrmanager.Utils;

import net.veda.hrmanager.Utils.Enums.UtilRegex;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import java.io.File;
import java.nio.file.Paths;


/**
 * @author Amin Mohamed
 */
public class CheckSumUtils {
    public CheckSumUtils() {
    }

    public static Log log = LogFactory.getLog(CheckSumUtils.class);

    public boolean renameAndDelete(File readingFile, File writingFile) {
        boolean result = false;
        try {
            if (readingFile.exists()) {
                if (readingFile.delete()) {
                    writingFile.renameTo(readingFile.getAbsoluteFile());
                    result = true;
                }
            }
            return result;
        } catch (Exception e) {
            e.printStackTrace();
            log.error("Cause : " + e.getCause());
            log.error("Message : " + e.getMessage());
            log.error("Method : renameAndDelete()");
            return false;
        }

    }

    public boolean isNotEmpty(String value) {
        try {
            return !isEmpty(value) && value.length() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            log.error("Cause : " + e.getCause());
            log.error("Message : " + e.getMessage());
            log.error("Method : isNotEmpty()");
            return false;
        }

    }

    public boolean isEmpty(String value) {
        try {
            return value == null || value.equals("");

        } catch (Exception e) {
            e.printStackTrace();
            log.error("Cause : " + e.getCause());
            log.error("Message : " + e.getMessage());
            log.error("Method : isEmpty()");
            return false;
        }
    }

    public boolean isValidPath(String filePath) {
        try {
            if (isNotEmpty(filePath)) {
                File file = new File(filePath);
                String path = "";
                if (filePath.contains(UtilRegex.SLASH.getValue()) && filePath.contains(UtilRegex.POINT.getValue())) {
                    path = filePath.substring(0, filePath.lastIndexOf(UtilRegex.SLASH.getValue()));
                }
                return Paths.get(path.equals(UtilRegex.EMPTY.getValue()) ? filePath : path).toFile().isDirectory() && file.exists();
            }
        } catch (Exception e) {
            e.printStackTrace();
            log.error("Cause : " + e.getCause());
            log.error("Message : " + e.getMessage());
            log.error("Method : isValidPath()");

            return false;
        }
        return false;
    }
}
