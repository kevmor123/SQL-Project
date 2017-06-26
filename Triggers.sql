CREATE TRIGGER Change_Area
	BEFORE DELETE ON Area_of_Field
	FOR EACH ROW
DECLARE
	Area_num INTEGER;
BEGIN
	Area_num := :OLD.Area_ID;
	UPDATE Type_of_Job
	SET Area_ID = 6
	WHERE Area_ID = Area_num;
END Change_Area;
.
RUN;
