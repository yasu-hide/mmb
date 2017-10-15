// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.utility;

import android.broadcast.helper.MtvUtilDebug;
import android.os.SystemProperties;
import java.nio.ByteBuffer;
import java.security.*;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.*;
import javax.crypto.spec.IvParameterSpec;

public class MtvUtilCrypto
{

    public MtvUtilCrypto(int i)
    {
        mCipher = null;
        mtvappKey = null;
        mIV = null;
        mIB = null;
        mCipherIV = null;
        mEncType = 0;
        mOpMode = 0;
        mCipherOutSize = 0;
        MtvUtilDebug.Mid("MtvUtilCrypto", "MtvUtilCrypto: Entered");
        mOpMode = i;
        if(mCipher == null)
            try
            {
                MtvUtilDebug.Mid("MtvUtilCrypto", "MtvUtilCrypto: getting instance of cipher");
                mCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            }
            catch(NoSuchAlgorithmException nosuchalgorithmexception)
            {
                nosuchalgorithmexception.printStackTrace();
            }
            catch(NoSuchPaddingException nosuchpaddingexception)
            {
                nosuchpaddingexception.printStackTrace();
            }
        mEncType = 0;
        generateIB();
        generateEncKey();
        MtvUtilDebug.Mid("MtvUtilCrypto", "MtvUtilCrypto: Exit");
    }

    private void extractIV(ByteBuffer bytebuffer)
    {
        MtvUtilDebug.Mid("MtvUtilCrypto", "extractIV: Entered ");
        bytebuffer.position(16);
        byte abyte0[] = new byte[16];
        bytebuffer.get(abyte0);
        mCipherIV = new IvParameterSpec(abyte0);
        MtvUtilDebug.Mid("MtvUtilCrypto", "extractIV: Exit");
    }

    private void generateEncKey()
    {
        MtvUtilDebug.Mid("MtvUtilCrypto", "generateEncKey: Enterd");
        if(mtvappKey != null) goto _L2; else goto _L1
_L1:
        byte abyte0[];
        byte abyte1[][];
        byte abyte2[];
        byte abyte3[];
        abyte1 = new byte[6][];
        abyte1[0] = (new byte[] {
            122, 54, 9, 28, 121, 68, 97, 60, 98, 94, 
            121, 63, 35, 87, 117, 21
        });
        abyte1[1] = (new byte[] {
            48, 81, 78, 89, 40, 115, 18, 12, 27, 107, 
            48, 13, 123, 106, 23, 78
        });
        abyte1[2] = (new byte[] {
            109, 20, 99, 29, 59, 64, 86, 126, 115, 94, 
            92, 51, 107, 61, 93, 90
        });
        abyte1[3] = (new byte[] {
            18, 88, 111, 34, 92, 85, 32, 59, 111, 33, 
            63, 70, 115, 1, 72, 62
        });
        abyte1[4] = (new byte[] {
            27, 61, 112, 52, 43, 124, 81, 79, 39, 109, 
            78, 5, 0, 106, 35, 126
        });
        abyte1[5] = (new byte[] {
            112, 85, 19, 112, 53, 73, 32, 87, 121, 115, 
            73, 104, 103, 5, 71, 61
        });
        abyte2 = new byte[16];
        abyte3 = new byte[16];
        abyte0 = new byte[16];
        MtvUtilDebug.Mid("MtvUtilCrypto", "generateEncKey: generating key");
        mEncType;
        JVM INSTR tableswitch 0 4: default 664
    //                   0 664
    //                   1 754
    //                   2 791
    //                   3 828
    //                   4 902;
           goto _L3 _L3 _L4 _L5 _L6 _L7
_L3:
        for(int i = 0; i < 16; i++)
        {
            abyte2[i] = (byte)(abyte1[0][i] ^ abyte1[2][i]);
            abyte2[i] = (byte)(abyte2[i] + abyte1[4][i]);
            abyte3[i] = (byte)(abyte1[1][i] ^ abyte1[3][i]);
            abyte3[i] = (byte)(abyte3[i] + abyte1[5][i]);
            abyte0[i] = (byte)(abyte2[i] ^ abyte3[i]);
        }

        break; /* Loop/switch isn't completed */
_L4:
        byte abyte4[] = SystemProperties.get("ril.IMEI", "INVALID").getBytes();
        int j = 0;
        while(j < abyte4.length) 
        {
            abyte1[0][j] = abyte4[j];
            j++;
        }
        if(true) goto _L3; else goto _L8
_L8:
        break; /* Loop/switch isn't completed */
_L5:
        byte abyte5[] = SystemProperties.get("ril.IMSI", "INVALID").getBytes();
        int k = 0;
        while(k < abyte5.length) 
        {
            abyte1[1][k] = abyte5[k];
            k++;
        }
        if(true) goto _L3; else goto _L9
_L9:
        break; /* Loop/switch isn't completed */
_L6:
        byte abyte6[] = SystemProperties.get("ril.IMEI", "INVALID").getBytes();
        for(int l = 0; l < abyte6.length; l++)
            abyte1[0][l] = abyte6[l];

        abyte6 = SystemProperties.get("ril.IMSI", "INVALID").getBytes();
        int i1 = 0;
        while(i1 < abyte6.length) 
        {
            abyte1[1][i1] = abyte6[i1];
            i1++;
        }
        if(true) goto _L3; else goto _L10
_L10:
        break; /* Loop/switch isn't completed */
_L7:
        byte abyte7[] = SystemProperties.get("ril.IMEI", "INVALID").getBytes();
        for(int j1 = 0; j1 < abyte7.length; j1++)
            abyte1[0][j1] = abyte7[j1];

        abyte7 = SystemProperties.get("ril.bt_macaddr", "INVALID").getBytes();
        int k1 = 0;
        while(k1 < abyte7.length) 
        {
            abyte1[1][k1] = abyte7[k1];
            k1++;
        }
        if(true) goto _L3; else goto _L11
_L11:
        try
        {
            KeyGenerator keygenerator = KeyGenerator.getInstance("AES");
            SecureRandom securerandom = SecureRandom.getInstance("SHA1PRNG", "Crypto");
            securerandom.setSeed(abyte0);
            keygenerator.init(128, securerandom);
            mtvappKey = keygenerator.generateKey();
        }
        catch(NoSuchAlgorithmException nosuchalgorithmexception)
        {
            nosuchalgorithmexception.printStackTrace();
        }
        catch(NoSuchProviderException nosuchproviderexception)
        {
            nosuchproviderexception.printStackTrace();
        }
_L2:
        MtvUtilDebug.Mid("MtvUtilCrypto", "generateEncKey: Exit");
        return;
    }

    private void generateIB()
    {
        MtvUtilDebug.Mid("MtvUtilCrypto", "generateIB: Enterd");
        mIB = new byte[16];
        generateRandomBytes(mIB);
        mIB[0] = 1;
        mIB[1] = 0;
        mIB[2] = mEncType;
        mIB[3] = 1;
    }

    private void generateIV()
    {
        MtvUtilDebug.Mid("MtvUtilCrypto", "generateIV: Enterd");
        if(mIV == null || mCipherIV == null)
        {
            MtvUtilDebug.Mid("MtvUtilCrypto", "generateIV: generarting IV");
            mIV = new byte[16];
            generateRandomBytes(mIV);
            mCipherIV = new IvParameterSpec(mIV);
        }
    }

    private void generateRandomBytes(byte abyte0[])
    {
        (new SecureRandom()).nextBytes(abyte0);
    }

    private void setMode(int i)
    {
        MtvUtilDebug.Mid("MtvUtilCrypto", (new StringBuilder()).append("setMode: Entered opmode is ").append(i).toString());
        try
        {
            mCipher.init(i, mtvappKey, mCipherIV);
        }
        catch(InvalidKeyException invalidkeyexception)
        {
            invalidkeyexception.printStackTrace();
        }
        catch(InvalidAlgorithmParameterException invalidalgorithmparameterexception)
        {
            invalidalgorithmparameterexception.printStackTrace();
        }
        MtvUtilDebug.Mid("MtvUtilCrypto", "setMode: Exit");
    }

    public int decryptData(ByteBuffer bytebuffer, ByteBuffer bytebuffer1)
    {
        boolean flag = false;
        int i = ((flag) ? 1 : 0);
        if(bytebuffer != null)
        {
            MtvUtilDebug.Mid("MtvUtilCrypto", (new StringBuilder()).append("decryptData: Entered").append(bytebuffer.array().length).toString());
            MtvUtilDebug.Mid("MtvUtilCrypto", "decryptData: Decrypting data");
            try
            {
                extractIV(bytebuffer);
                setMode(2);
                bytebuffer.position(32);
                i = mCipher.doFinal(bytebuffer, bytebuffer1);
            }
            // Misplaced declaration of an exception variable
            catch(ByteBuffer bytebuffer)
            {
                bytebuffer.printStackTrace();
                i = ((flag) ? 1 : 0);
            }
            // Misplaced declaration of an exception variable
            catch(ByteBuffer bytebuffer)
            {
                bytebuffer.printStackTrace();
                i = ((flag) ? 1 : 0);
            }
            // Misplaced declaration of an exception variable
            catch(ByteBuffer bytebuffer)
            {
                bytebuffer.printStackTrace();
                i = ((flag) ? 1 : 0);
            }
        }
        MtvUtilDebug.Mid("MtvUtilCrypto", (new StringBuilder()).append("decryptData: exit with len = ").append(i).toString());
        return i;
    }

    public int encryptData(ByteBuffer bytebuffer, ByteBuffer bytebuffer1)
    {
        MtvUtilDebug.Mid("MtvUtilCrypto", "encryptData: Entered");
        ByteBuffer bytebuffer2 = ByteBuffer.allocate(mCipherOutSize);
        if(bytebuffer != null)
            try
            {
                MtvUtilDebug.Mid("MtvUtilCrypto", "encryptData: encrypting");
                generateIV();
                setMode(1);
                mCipher.doFinal(bytebuffer, bytebuffer2);
            }
            // Misplaced declaration of an exception variable
            catch(ByteBuffer bytebuffer)
            {
                bytebuffer.printStackTrace();
            }
            // Misplaced declaration of an exception variable
            catch(ByteBuffer bytebuffer)
            {
                bytebuffer.printStackTrace();
            }
            // Misplaced declaration of an exception variable
            catch(ByteBuffer bytebuffer)
            {
                bytebuffer.printStackTrace();
            }
        bytebuffer1.put(mIB);
        bytebuffer1.put(mIV);
        bytebuffer1.put(bytebuffer2.array());
        MtvUtilDebug.Mid("MtvUtilCrypto", (new StringBuilder()).append("encryptData: Exit with len = ").append(bytebuffer1.array().length).toString());
        return bytebuffer1.array().length;
    }

    public final int getOutputSize(int i, int j)
    {
        MtvUtilDebug.Mid("MtvUtilCrypto", "getOutputSize: Entered");
        generateIV();
        try
        {
            MtvUtilDebug.Mid("MtvUtilCrypto", "getOutputSize: Entered");
            mCipher.init(i, mtvappKey, mCipherIV);
        }
        catch(InvalidKeyException invalidkeyexception)
        {
            invalidkeyexception.printStackTrace();
        }
        catch(InvalidAlgorithmParameterException invalidalgorithmparameterexception)
        {
            invalidalgorithmparameterexception.printStackTrace();
        }
        if(1 == mOpMode)
        {
            mCipherOutSize = mCipher.getOutputSize(j);
            return mCipherOutSize + 32;
        } else
        {
            mCipherOutSize = mCipher.getOutputSize(j - 32);
            return mCipherOutSize;
        }
    }

    private static final int AES_BLOCK_SIZE = 16;
    private static final String AES_CBC_PKCS5_PADDING = "AES/CBC/PKCS5Padding";
    private static final int AES_KEY_LEN_128 = 128;
    public static final int DECRYPT_MODE = 2;
    public static final int ENCRYPT_MODE = 1;
    private static final byte MTV_CRYPTO_AES_128_CBC_IMEI = 1;
    private static final byte MTV_CRYPTO_AES_128_CBC_IMEI_IMSI = 3;
    private static final byte MTV_CRYPTO_AES_128_CBC_IMEI_MAC = 4;
    private static final byte MTV_CRYPTO_AES_128_CBC_IMSI = 2;
    private static final byte MTV_CRYPTO_AES_128_CBC_NONE = 0;
    private static final byte MTV_CRYPTO_AES_CBC_128 = 0;
    private static final byte MTV_CRYPTO_AES_PKCS5PADDING = 1;
    private static final byte MTV_CRYPTO_VERSION = 1;
    private static final String TAG = "MtvUtilCrypto";
    private Cipher mCipher;
    private AlgorithmParameterSpec mCipherIV;
    private int mCipherOutSize;
    private byte mEncType;
    private byte mIB[];
    private byte mIV[];
    private int mOpMode;
    private SecretKey mtvappKey;
}
