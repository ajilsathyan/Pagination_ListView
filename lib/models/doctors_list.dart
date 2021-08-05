

class DoctorsList {
  String? doctorsId;
  String? doctorsUserId;
  String? doctorsName;
  String? doctorClinicName;
  String? doctorsEmail;
  String? doctorsContactNumber;
  String? doctorsAddress;
  String? doctorsWebsite;
  String? doctorsImages;
  String? doctorsIsVisit;
  String? doctorSpecialistId;
  String? doctorsWeekDaysOpeningTime;
  String? doctorsWeekDaysClosingTime;
  String? doctorsWeekEndsOpeningTime;
  String? doctorsWeekEndsClosingTime;
  String? doctorsIsAvailable;
  String? doctorsStatus;
  String? doctorsDescription;
  String? doctorLatitude;
  String? doctorLongitude;
  String? doctorBusinessId;
  String? createdDate;
  String? modifiedDate;
  String? doctorSpecialistName;
  Doctor_schedule_details? doctorScheduleDetails;
  String? rating;
  String? distance;
  String? time;

  DoctorsList({
      this.doctorsId, 
      this.doctorsUserId, 
      this.doctorsName, 
      this.doctorClinicName, 
      this.doctorsEmail, 
      this.doctorsContactNumber, 
      this.doctorsAddress, 
      this.doctorsWebsite, 
      this.doctorsImages, 
      this.doctorsIsVisit, 
      this.doctorSpecialistId, 
      this.doctorsWeekDaysOpeningTime, 
      this.doctorsWeekDaysClosingTime, 
      this.doctorsWeekEndsOpeningTime, 
      this.doctorsWeekEndsClosingTime, 
      this.doctorsIsAvailable, 
      this.doctorsStatus, 
      this.doctorsDescription, 
      this.doctorLatitude, 
      this.doctorLongitude, 
      this.doctorBusinessId, 
      this.createdDate, 
      this.modifiedDate, 
      this.doctorSpecialistName, 
      this.doctorScheduleDetails, 
      this.rating, 
      this.distance, 
      this.time});

  DoctorsList.fromJson(dynamic json) {
    doctorsId = json["doctors_id"];
    doctorsUserId = json["doctors_user_id"];
    doctorsName = json["doctors_name"];
    doctorClinicName = json["doctor_clinic_name"];
    doctorsEmail = json["doctors_email"];
    doctorsContactNumber = json["doctors_contact_number"];
    doctorsAddress = json["doctors_address"];
    doctorsWebsite = json["doctors_website"];
    doctorsImages = json["doctors_images"];
    doctorsIsVisit = json["doctors_is_visit"];
    doctorSpecialistId = json["doctor_specialist_id"];
    doctorsWeekDaysOpeningTime = json["doctors_week_days_opening_time"];
    doctorsWeekDaysClosingTime = json["doctors_week_days_closing_time"];
    doctorsWeekEndsOpeningTime = json["doctors_week_ends_opening_time"];
    doctorsWeekEndsClosingTime = json["doctors_week_ends_closing_time"];
    doctorsIsAvailable = json["doctors_is_available"];
    doctorsStatus = json["doctors_status"];
    doctorsDescription = json["doctors_description"];
    doctorLatitude = json["doctor_latitude"];
    doctorLongitude = json["doctor_longitude"];
    doctorBusinessId = json["doctor_business_id"];
    createdDate = json["created_date"];
    modifiedDate = json["modified_date"];
    doctorSpecialistName = json["doctor_specialist_name"];
    doctorScheduleDetails = json["doctor_schedule_details"] != null ? Doctor_schedule_details.fromJson(json["doctor_schedule_details"]) : null;
    rating = json["rating"];
    distance = json["distance"];
    time = json["time"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["doctors_id"] = doctorsId;
    map["doctors_user_id"] = doctorsUserId;
    map["doctors_name"] = doctorsName;
    map["doctor_clinic_name"] = doctorClinicName;
    map["doctors_email"] = doctorsEmail;
    map["doctors_contact_number"] = doctorsContactNumber;
    map["doctors_address"] = doctorsAddress;
    map["doctors_website"] = doctorsWebsite;
    map["doctors_images"] = doctorsImages;
    map["doctors_is_visit"] = doctorsIsVisit;
    map["doctor_specialist_id"] = doctorSpecialistId;
    map["doctors_week_days_opening_time"] = doctorsWeekDaysOpeningTime;
    map["doctors_week_days_closing_time"] = doctorsWeekDaysClosingTime;
    map["doctors_week_ends_opening_time"] = doctorsWeekEndsOpeningTime;
    map["doctors_week_ends_closing_time"] = doctorsWeekEndsClosingTime;
    map["doctors_is_available"] = doctorsIsAvailable;
    map["doctors_status"] = doctorsStatus;
    map["doctors_description"] = doctorsDescription;
    map["doctor_latitude"] = doctorLatitude;
    map["doctor_longitude"] = doctorLongitude;
    map["doctor_business_id"] = doctorBusinessId;
    map["created_date"] = createdDate;
    map["modified_date"] = modifiedDate;
    map["doctor_specialist_name"] = doctorSpecialistName;
    if (doctorScheduleDetails != null) {
      map["doctor_schedule_details"] = doctorScheduleDetails?.toJson();
    }
    map["rating"] = rating;
    map["distance"] = distance;
    map["time"] = time;
    return map;
  }

}



class Doctor_schedule_details {
  String? doctorScheduleId;
  String? scheduleMonOpening;
  String? scheduleMonClosing;
  String? scheduleTuesOpening;
  String? scheduleTuesClosing;
  String? scheduleWebOpening;
  String? scheduleWebClosing;
  String? scheduleThuOpening;
  String? scheduleThuClosing;
  String? scheduleFriOpening;
  String? scheduleFriClosing;
  String? scheduleSatOpening;
  String? scheduleSatClosing;
  String? scheduleSunOpening;
  String? scheduleSunClose;
  String? doctorId;
  String? createdDate;
  String? modifiedDate;

  Doctor_schedule_details({
      this.doctorScheduleId, 
      this.scheduleMonOpening, 
      this.scheduleMonClosing, 
      this.scheduleTuesOpening, 
      this.scheduleTuesClosing, 
      this.scheduleWebOpening, 
      this.scheduleWebClosing, 
      this.scheduleThuOpening, 
      this.scheduleThuClosing, 
      this.scheduleFriOpening, 
      this.scheduleFriClosing, 
      this.scheduleSatOpening, 
      this.scheduleSatClosing, 
      this.scheduleSunOpening, 
      this.scheduleSunClose, 
      this.doctorId, 
      this.createdDate, 
      this.modifiedDate});

  Doctor_schedule_details.fromJson(dynamic json) {
    doctorScheduleId = json["doctor_schedule_id"];
    scheduleMonOpening = json["schedule_mon_opening"];
    scheduleMonClosing = json["schedule_mon_closing"];
    scheduleTuesOpening = json["schedule_tues_opening"];
    scheduleTuesClosing = json["schedule_tues_closing"];
    scheduleWebOpening = json["schedule_web_opening"];
    scheduleWebClosing = json["schedule_web_closing"];
    scheduleThuOpening = json["schedule_thu_opening"];
    scheduleThuClosing = json["schedule_thu_closing"];
    scheduleFriOpening = json["schedule_fri_opening"];
    scheduleFriClosing = json["schedule_fri_closing"];
    scheduleSatOpening = json["schedule_sat_opening"];
    scheduleSatClosing = json["schedule_sat_closing"];
    scheduleSunOpening = json["schedule_sun_opening"];
    scheduleSunClose = json["schedule_sun_close"];
    doctorId = json["doctor_id"];
    createdDate = json["created_date"];
    modifiedDate = json["modified_date"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["doctor_schedule_id"] = doctorScheduleId;
    map["schedule_mon_opening"] = scheduleMonOpening;
    map["schedule_mon_closing"] = scheduleMonClosing;
    map["schedule_tues_opening"] = scheduleTuesOpening;
    map["schedule_tues_closing"] = scheduleTuesClosing;
    map["schedule_web_opening"] = scheduleWebOpening;
    map["schedule_web_closing"] = scheduleWebClosing;
    map["schedule_thu_opening"] = scheduleThuOpening;
    map["schedule_thu_closing"] = scheduleThuClosing;
    map["schedule_fri_opening"] = scheduleFriOpening;
    map["schedule_fri_closing"] = scheduleFriClosing;
    map["schedule_sat_opening"] = scheduleSatOpening;
    map["schedule_sat_closing"] = scheduleSatClosing;
    map["schedule_sun_opening"] = scheduleSunOpening;
    map["schedule_sun_close"] = scheduleSunClose;
    map["doctor_id"] = doctorId;
    map["created_date"] = createdDate;
    map["modified_date"] = modifiedDate;
    return map;
  }

}