import 'package:intl/intl.dart';

DateTime? _parseDate(String? inputDate) {
  if (null == inputDate) {
    return null;
  } else {
    DateTime date = DateFormat('yyyy-MM-dd\'T\'HH:mm:ssZ').parse(inputDate);
    return date.add(date.timeZoneOffset);
  }
}

class PlanUsageBreakdown {
  String firstName; //*
  int userId;
  String userType; //*
  int minutesUsed; //*
  int? siteMinutesUsed;
  bool isPaused; //*

  PlanUsageBreakdown.fromJson(Map<String, dynamic> json)
      : isPaused = json['isPaused'],
        minutesUsed = json['minutesUsed'],
        siteMinutesUsed = json['siteMinutesUsed'],
        userId = json['userId'],
        userType = json['userType'],
        firstName = json['firstName'];
}

class Usage {
  String? planName; //*
  int? totalMinutes; //*
  int? totalMinutesLeft; //*
  int? totalPrimaryMinutes; //*
  int? totalPrimaryMinutesUsed;
  int? totalAccessMinutesUsed; //*
  int? totalProductMinutesUsed;
  int? totalPromotionMinutesUsed;
  int? totalSiteMinutesUsed;
  int? totalMinutesUsed; //*
  int? totalMinutesRolledOver;
  int? totalCreditMinutes; //*
  int? totalCreditMinutesUsed;
  int? totalPrivateSiteMinutes;
  int? totalPrivateSiteMinutesUsed;
  int? totalFixedMinutes; //*
  int? totalFixedMinutesUsed;
  DateTime? billingCycleStart;
  DateTime? billingCycleEnd; //*
  String? billingCycleStartDate;
  String? billingCycleEndDate;
  bool? canPurchaseMinutes;
  bool? canModifyPlan;
  bool? hasFreeCall; //*
  DateTime? timeUntilNextFreeCall; //*
  bool? primary;
  bool? planUnlimited; //*

  List<PlanUsageBreakdown>? planUsageBreakdownList; //*

  Usage.fromJson(Map<String, dynamic> json)
      : billingCycleEnd = null == json['billingCycleEnd'] ? null : DateTime.fromMillisecondsSinceEpoch(json['billingCycleEnd']),
        billingCycleEndDate = json['billingCycleEndDate'],
        billingCycleStart = null == json['billingCycleStart'] ? null : DateTime.fromMillisecondsSinceEpoch(json['billingCycleStart']),
        billingCycleStartDate = json['billingCycleStartDate'],
        canModifyPlan = json['canModifyPlan'],
        canPurchaseMinutes = json['canPurchaseMinutes'],
        hasFreeCall = json['hasFreeCall'],
        planName = json['planName'],
        planUnlimited = json['planUnlimited'],
        planUsageBreakdownList = (json['usageBreakdown'] as List<dynamic>).map((e) => PlanUsageBreakdown.fromJson(e)).toList(growable: false),
        primary = json['primary'],
        timeUntilNextFreeCall = _parseDate(json['timeUntilNextFreeCall']),
        totalAccessMinutesUsed = json['totalAccessMinutesUsed'],
        totalCreditMinutes = json['totalCreditMinutes'],
        totalCreditMinutesUsed = json['totalCreditMinutesUsed'],
        totalFixedMinutes = json['totalFixedMinutes'],
        totalFixedMinutesUsed = json['totalFixedMinutesUsed'],
        totalMinutes = json['totalMinutes'],
        totalMinutesLeft = json['totalMinutesLeft'],
        totalMinutesRolledOver = json['totalMinutesRolledOver'],
        totalMinutesUsed = json['totalMinutesUsed'],
        totalPrimaryMinutes = json['totalPrimaryMinutes'],
        totalPrimaryMinutesUsed = json['totalPrimaryMinutesUsed'],
        totalPrivateSiteMinutes = json['totalPrivateSiteMinutes'],
        totalPrivateSiteMinutesUsed = json['totalPrivateSiteMinutesUsed'],
        totalProductMinutesUsed = json['totalProductMinutesUsed'],
        totalPromotionMinutesUsed = json['totalPromotionMinutesUsed'],
        totalSiteMinutesUsed = json['totalSiteMinutesUsed'];
}