CREATE TABLE pacientes (Pregnancies INT,
                        Glucose INT,
                        BloodPressure INT,
                        SkinThickness INT,
                        Insulin INT,
                        BMI DECIMAL(8, 2),
                        DiabetesPedigreeFunction DECIMAL(8, 2),
                        Age INT,
                        Outcome INT);

INSERT INTO pacientes (Pregnancies,
                       Glucose,
                       BloodPressure,
                       SkinThickness,
                       Insulin,
                       BMI,
                       DiabetesPedigreeFunction,
                       Age,
                       Outcome)
            SELECT Pregnancies,
                   Glucose,
                   BloodPressure,
                   SkinThickness,
                   Insulin,
                   BMI,
                   DiabetesPedigreeFunction,
                   Age,
                   Outcome
            FROM diabetes WHERE Age > 50;

ALTER TABLE pacientes
ADD Perfil VARCHAR(10);

UPDATE pacientes
SET Perfil = 'Normal'
WHERE BMI < 30;

UPDATE pacientes
SET Perfil = 'Obeso'
WHERE BMI >= 30;

SELECT *
FROM pacientes
LIMIT 10;