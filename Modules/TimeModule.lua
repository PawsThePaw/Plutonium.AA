local UTC = DateTime.now():ToUniversalTime()
local LocalTime = DateTime.now():ToLocalTime()

UTC = DateTime.fromUniversalTime(UTC.Year,UTC.Month,UTC.Day,UTC.Hour,UTC.Minute,UTC.Second,UTC.Millisecond).UnixTimestampMillis/1000
LocalTime = DateTime.fromUniversalTime(LocalTime.Year, LocalTime.Month, LocalTime.Day, LocalTime.Hour, LocalTime.Minute, LocalTime.Second, LocalTime.Millisecond).UnixTimestampMillis / 1000

local UTCOffset = UTC - os.clock()
local LocalOffset = LocalTime - os.clock()

local UTC_Local_Offset = UTCOffset - LocalOffset

local TimeModule = {}

function TimeModule:Tick()
    return os.clock() + UTCOffset
end

function TimeModule:UTC()
	return os.clock() + UTCOffset
end

function TimeModule:LocalTime()
	return os.clock() + LocalOffset
end

function TimeModule:ToUTC(Time : number)
	return Time + UTC_Local_Offset
end

function TimeModule:ToLocalTime(Time : number)
	return Time - UTC_Local_Offset
end

function TimeModule:FormatDate(FormatString : string, Time : number?)
    Time = Time + UTC_Local_Offset or self:UTC()
	return os.date(FormatString, Time)
end

return TimeModule
