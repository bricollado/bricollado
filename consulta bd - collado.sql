select `so`.`sid` AS `Nro Socio`,concat_ws(',',`us`.`apellido`,`us`.`nombre`) AS `Nombre Completo`,`us`.`dni` AS `DNI`,`us`.`fNacimiento` AS `Fecha Nacimiento`,`so`.`fInscripcion` AS `Fecha Inscrip`,`us`.`direccion` AS `Direccion`,`eq`.`nombre` AS `Equipo` from (((`usuarios` `us` join `socios` `so` on(`us`.`id` = `so`.`uid`)) join `jugadores` `ju` on(`so`.`sid` = `ju`.`sid`)) join `equipos` `eq` on(`eq`.`eid` = `ju`.`eid`)) where `so`.`activo` = 1 union all select `so`.`sid` AS `sid`,concat_ws(',',`us`.`apellido`,`us`.`nombre`) AS `concat_ws(",",us.apellido ,us.nombre)`,`us`.`dni` AS `dni`,`us`.`fNacimiento` AS `fNacimiento`,`so`.`fInscripcion` AS `fInscripcion`,`us`.`direccion` AS `direccion`,'Sin Equipo' AS `Sin Equipo` from ((`usuarios` `us` join `socios` `so` on(`us`.`id` = `so`.`uid`)) join `jugadores` `ju` on(`so`.`sid` = `ju`.`sid`)) where `so`.`activo` = 1 and `ju`.`eid` is null