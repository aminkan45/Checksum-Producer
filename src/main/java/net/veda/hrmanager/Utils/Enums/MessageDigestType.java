/*
 * Copyright 2022 VEDA GmbH. All rights reserved.
 * Use is subject to license terms.
 */
package net.veda.hrmanager.Utils.Enums;

import lombok.Getter;

/**
 * @author Amin Mohamed
 */
public enum MessageDigestType {
    SHA_256("SHA-256"),
    MD5("MD5"),
    SHA_1("SHA-1");
    MessageDigestType(String type) {
        this.type = type;
    }

    @Getter
       private final String type;



}
