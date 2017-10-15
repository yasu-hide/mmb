// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.utility;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.broadcast.helper.MtvUtilDebug;
import android.content.Context;
import android.content.Intent;
import com.samsung.sec.mtv.provider.MtvReservation;
import com.samsung.sec.mtv.provider.MtvReservationManager;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

// Referenced classes of package com.samsung.sec.mtv.utility:
//            MtvPreferences

public class MtvUtilSetReservationAlarm
{

    public MtvUtilSetReservationAlarm()
    {
    }

    private static int calculateSetReserveTime(long l, long l1)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("d");
        SimpleDateFormat simpledateformat1 = new SimpleDateFormat("H");
        SimpleDateFormat simpledateformat2 = new SimpleDateFormat("mm");
        SimpleDateFormat simpledateformat3 = new SimpleDateFormat("ss");
        Calendar calendar = Calendar.getInstance();
        l = l1 - l - (long)calendar.get(15) - (long)calendar.get(16);
        int j = Integer.parseInt(simpledateformat.format(new Date(l)));
        int k = Integer.parseInt(simpledateformat1.format(new Date(l)));
        int i1 = Integer.parseInt(simpledateformat2.format(new Date(l)));
        int j1 = Integer.parseInt(simpledateformat3.format(new Date(l)));
        int i = j;
        if(j > 8)
            i = 1;
        return (i - 1) * 60 * 60 * 24 + k * 60 * 60 + i1 * 60 + j1;
    }

    public static void setReservationAlarm(Context context, long l, boolean flag, boolean flag1)
    {
        MtvUtilDebug.Mid(TAG, "setReservationAlarm");
        long l1 = System.currentTimeMillis();
        Object obj2 = MtvReservationManager.find(context, l, new boolean[0]);
        if(obj2 == null)
        {
            MtvUtilDebug.Mid(TAG, "setReservationAlarm : invalid reservation request");
        } else
        {
            int i = calculateSetReserveTime(l1, l);
            int j = calculateSetReserveTime(l1, ((MtvReservation) (obj2)).mTimeEnd);
            Object obj = new Intent("com.samsung.sec.mtv.ACTION_MTV_RESERVATION_START");
            Object obj1 = new Intent("com.samsung.sec.mtv.ACTION_MTV_RESERVATION_REMINDER");
            Object obj3 = new Intent("com.samsung.sec.mtv.ACTION_MTV_RESERVATION_END");
            obj = PendingIntent.getBroadcast(context, ((MtvReservation) (obj2)).mUriId, ((Intent) (obj)).putExtra("dbId", ((MtvReservation) (obj2)).mUriId), 0x8000000);
            obj1 = PendingIntent.getBroadcast(context, ((MtvReservation) (obj2)).mUriId, ((Intent) (obj1)).putExtra("dbId", ((MtvReservation) (obj2)).mUriId), 0x8000000);
            obj2 = PendingIntent.getBroadcast(context, ((MtvReservation) (obj2)).mUriId, ((Intent) (obj3)).putExtra("dbId", ((MtvReservation) (obj2)).mUriId), 0x8000000);
            obj3 = Calendar.getInstance();
            ((Calendar) (obj3)).setTimeInMillis(System.currentTimeMillis());
            ((Calendar) (obj3)).add(13, i - 5);
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(System.currentTimeMillis());
            calendar.add(13, i - 20);
            Calendar calendar1 = Calendar.getInstance();
            calendar1.setTimeInMillis(System.currentTimeMillis());
            calendar1.add(13, j);
            if(flag)
            {
                context = (AlarmManager)context.getSystemService("alarm");
                context.setExact(0, ((Calendar) (obj3)).getTimeInMillis(), ((PendingIntent) (obj)));
                context.setExact(0, calendar.getTimeInMillis(), ((PendingIntent) (obj1)));
                context.setExact(0, calendar1.getTimeInMillis(), ((PendingIntent) (obj2)));
                MtvUtilDebug.Mid(TAG, "setReservationAlarm : new alarm set ");
                return;
            }
            obj3 = (AlarmManager)context.getSystemService("alarm");
            ((AlarmManager) (obj3)).cancel(((PendingIntent) (obj)));
            ((AlarmManager) (obj3)).cancel(((PendingIntent) (obj1)));
            ((AlarmManager) (obj3)).cancel(((PendingIntent) (obj2)));
            if(flag1)
            {
                MtvReservationManager.delete(context, l, null);
                return;
            }
        }
    }

    public static void setReservationOnBoot(Context context)
    {
        MtvPreferences mtvpreferences = new MtvPreferences(context);
        if(mtvpreferences.getReservationAlertID() != -1)
            mtvpreferences.setReservationAlertID(-1);
        MtvReservation amtvreservation[] = MtvReservationManager.getAllReserves(context);
        long l = System.currentTimeMillis();
        if(amtvreservation != null && amtvreservation.length >= 1)
        {
            int i = 0;
            while(i < amtvreservation.length) 
            {
                if(amtvreservation[i].mTimeStart < l)
                {
                    MtvReservation mtvreservation = amtvreservation[i];
                    if(mtvreservation.mPgmStatus == 0 || mtvreservation.mPgmStatus == 6)
                        MtvReservationManager.UpdateStatus(context, mtvreservation, 3);
                } else
                {
                    setReservationAlarm(context, amtvreservation[i].mTimeStart, true, false);
                }
                i++;
            }
        }
    }

    public static final boolean RESERVATION_ALARM_SET = true;
    public static final boolean RESERVATION_DELETE_DB = true;
    public static final int RESERVATION_REMINDER_PERIOD_SEC = 20;
    private static String TAG = "MtvUtilSetReservationAlarm";

}
