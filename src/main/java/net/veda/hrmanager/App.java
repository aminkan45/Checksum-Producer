package net.veda.hrmanager;

import net.veda.hrmanager.PutCheckSumIntoFile.InsertCheckSumIntoFile;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class App {
          private static final InsertCheckSumIntoFile insertCheckSumIntoFile = new InsertCheckSumIntoFile();
        public static Log log = LogFactory.getLog(App.class);

        public static void main(String[] args) {
            String path = "C:\\Developer\\Checksum-Producer\\src\\main\\resources";
            log.info("Hallo Welt");
            if (args.length > 0) {
                for (String arg : args) {
                    if (insertCheckSumIntoFile.writeCheckSumIntoFiles(arg)) {
                        System.out.println("insertCheckSumIntoFile : " + insertCheckSumIntoFile.writeCheckSumIntoFiles(arg));
                    }
                }
            } else {
                if (insertCheckSumIntoFile.writeCheckSumIntoFiles(path)) {
                    System.out.println("writeCheckSumIntoFiles : " + insertCheckSumIntoFile.writeCheckSumIntoFiles(path));
                }
            }

        }

    }

