/*
 * Copyright 2022 VEDA GmbH. All rights reserved.
 * Use is subject to license terms.
 */
package net.veda.hrmanager.Utils;

import lombok.Getter;
import lombok.Setter;

/**
 * @author Amin Mohamed
 */
public class DataModel {
    @Getter
    @Setter
    private String oldCheckSumInFile;
    @Getter
    @Setter
    private String oldCheckSumInFileWithComments;
    @Getter
    @Setter
    private String newlyCalculateChecksum;
    @Getter
    @Setter
    private boolean changed;
    @Getter
    @Setter
    private String newlyCalculateChecksumWithComments;

}
