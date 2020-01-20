use aaia_vcdb2009_mysql_complete_vcdb_20190329;

DROP procedure IF EXISTS sp_autoCareReservedKeyword;

DELIMITER //

CREATE PROCEDURE sp_autoCareReservedKeyword()
BEGIN
  DROP TABLE IF EXISTS tb_autocarereservedkeywords;

  CREATE TABLE tb_autocarereservedkeywords (
    SourceTable nvarchar(50),
    SourceID int,
    Value longtext
  );

  INSERT INTO tb_autocarereservedkeywords (SourceTable, SourceID, Value)
    SELECT
      'Make',
      MakeID,
      MakeName
    FROM Make
    UNION ALL
    SELECT
      'Model',
      ModelID,
      ModelName
    FROM Model
    UNION ALL
    SELECT
      'Region',
      RegionID,
      RegionName
    FROM Region
    UNION ALL
    SELECT
      'Region',
      RegionID,
      RegionAbbr
    FROM Region
    UNION ALL
    SELECT
      'SubModel',
      SubModelID,
      SubModelName
    FROM SubModel
    UNION ALL
    SELECT
      'Mfr',
      MfrID,
      MfrName
    FROM Mfr
    UNION ALL
    SELECT
      'VehicleType',
      VehicleTypeID,
      VehicleTypeName
    FROM VehicleType
    UNION ALL
    SELECT
      'BedType',
      BedTypeID,
      BedTypeName
    FROM BedType
    UNION ALL
    SELECT
      'BrakeSystem',
      BrakeSystemID,
      BrakeSystemName
    FROM BrakeSystem
    UNION ALL
    SELECT
      'BrakeType',
      BrakeTypeID,
      BrakeTypeName
    FROM BrakeType
    UNION ALL
    SELECT
      'BrakeABS',
      BrakeABSID,
      BrakeABSName
    FROM BrakeABS
    UNION ALL
    SELECT
      'SpringType',
      SpringTypeID,
      SpringTypeName
    FROM SpringType
    UNION ALL
    SELECT
      'SteeringSystem',
      SteeringSystemID,
      SteeringSystemName
    FROM SteeringSystem
    UNION ALL
    SELECT
      'SteeringType',
      SteeringTypeID,
      SteeringTypeName
    FROM SteeringType
    UNION ALL
    SELECT
      'Mfr',
      MfrID,
      MfrName
    FROM Mfr
    UNION ALL
    SELECT
      'FuelSystemControlType',
      FuelSystemControlTypeID,
      FuelSystemControlTypeName
    FROM FuelSystemControlType
    UNION ALL
    SELECT
      'FuelDeliverySubType',
      FuelDeliverySubTypeID,
      FuelDeliverySubTypeName
    FROM FuelDeliverySubType
    UNION ALL
    SELECT
      'FuelSystemDesign',
      FuelSystemDesignID,
      FuelSystemDesignName
    FROM FuelSystemDesign
    UNION ALL
    SELECT
      'FuelDeliveryType',
      FuelDeliveryTypeID,
      FuelDeliveryTypeName
    FROM FuelDeliveryType
    UNION ALL
    SELECT
      'FuelType',
      FuelTypeID,
      FuelTypeName
    FROM FuelType
    UNION ALL
    SELECT
      'Aspiration',
      AspirationID,
      AspirationName
    FROM Aspiration
    UNION ALL
    SELECT
      'IgnitionSystemType',
      IgnitionSystemTypeID,
      IgnitionSystemTypeName
    FROM IgnitionSystemType
    UNION ALL
    SELECT
      'CylinderHeadType',
      CylinderHeadTypeID,
      CylinderHeadTypeName
    FROM CylinderHeadType
    UNION ALL
    SELECT
      'EngineDesignation',
      EngineDesignationID,
      EngineDesignationName
    FROM EngineDesignation
    UNION ALL
    SELECT
      'TransmissionType',
      TransmissionTypeID,
      TransmissionTypeName
    FROM TransmissionType
    UNION ALL
    SELECT
      'BodyType',
      BodyTypeID,
      BodyTypeName
    FROM BodyType
    UNION ALL
    SELECT
      'TransmissionControlType',
      TransmissionControlTypeID,
      TransmissionControlTypeName
    FROM TransmissionControlType
    UNION ALL
    SELECT
      'BedType',
      BedTypeID,
      BedTypeName
    FROM BedType;
	Delete from tb_autocarereservedkeywords where char_length(rtrim(Value)) =1;
	END;
//

DELIMITER ;

CALL sp_autoCareReservedKeyword();
