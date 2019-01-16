DELIMITER //


CREATE EVENT event_auto_update
    ON SCHEDULE EVERY 10 SECOND STARTS '2019-01-09 00:00'
    DO
      BEGIN
        CALL procedure_timecheck();
        CALL procedure_rensa_budhistorik();
      END //

DELIMITER //


-- DROP EVENT event_auto_update;