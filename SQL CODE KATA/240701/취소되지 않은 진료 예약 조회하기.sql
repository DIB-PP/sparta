SELECT appointment.apnt_no
     , patient.pt_name
     , patient.pt_no
     , appointment.mcdp_cd
     , doctor.dr_name
     , appointment.apnt_ymd
FROM patient LEFT JOIN appointment ON patient.pt_no = appointment.pt_no LEFT JOIN doctor ON appointment.mddr_id = doctor.dr_id
WHERE DATE_FORMAT(appointment.apnt_ymd, '%Y-%m-%d') = '2022-04-13'
    AND appointment.apnt_cncl_yn = 'n'
ORDER BY appointment.apnt_ymd
