tell application "Calendar"
set my_Calendars to every calendar
set Total_Events to 0
set Debut to "01/01/2023"
set Fin to "12/31/2023"
repeat with a_calendar in my_Calendars
    tell a_calendar to set my_Events to (every event whose (start date is greater than or equal to Debut) and (start date is less than or equal to Fin))
    set Total_Events to Total_Events + (count of my_Events)
end repeat
display dialog (Total_Events)
end tell
