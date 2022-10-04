package net.veda.hrmanager.InterFace;

import net.veda.hrmanager.Utils.DataModel;

public interface Checksum {
    public DataModel getFileChecksum(String MessageDigestType, String filePath);
}
