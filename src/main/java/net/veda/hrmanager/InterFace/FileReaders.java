package net.veda.hrmanager.InterFace;

public interface FileReaders {

    public boolean readAndWrite(String path, String oldChecksumInFileWithComments, String newCheckSumWithComments);
}
