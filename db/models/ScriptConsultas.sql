#TABLA RUBROS
INSERT INTO public.rubros(
	descripcion_tr, created_at, updated_at) values
	( 'Comercial','2020/02/08','2020/02/08'),
	( 'Industrial','2020/02/08','2020/02/08'),
	( 'Educacional','2020/02/08','2020/02/08'),
	( 'Estatal','2020/02/08','2020/02/08');
Select * from public.rubros;
--delete from public.rubros

#TABLA DROGAS
INSERT INTO public.drogas(
	descripcion_td, created_at, updated_at) values
	( 'Piretroydes','2020/02/08','2020/02/08'),
	( 'Bromadilone','2020/02/08','2020/02/08');
	
Select * from public.drogas;
--delete from public.drogas

#TABLA TRATAMIENTOS
INSERT INTO public.tratamientos(
	descripcion_tt, created_at, updated_at) VALUES 
	( 'Aspersion','2020/02/08','2020/02/08'),
	( 'Humo','2020/02/08','2020/02/08'),
	( 'Nebla','2020/02/08','2020/02/08'),
	( 'Otros','2020/02/08','2020/02/08');
Select * from public.tratamientos;
--delete from public.tratamientos

#TABLA TIPO_CLIENTES
INSERT INTO public.tipos_clientes(
	descripcion_tc, created_at, updated_at)	VALUES 
	( 'Comercial','2020/02/08','2020/02/08'),
	( 'Industrial','2020/02/08','2020/02/08'),
	( 'Educacional','2020/02/08','2020/02/08'),
	( 'Estatal','2020/02/08','2020/02/08'),
	( 'Otros','2020/02/08','2020/02/08');
Select * from public.tipos_clientes;
--delete from public.tipos_clientes

#TABLA VECTORES
INSERT INTO public.vectores(
	descripcion_tv, created_at, updated_at) VALUES
	( 'Insectos','2020/02/08','2020/02/08'),
	( 'Roedores','2020/02/08','2020/02/08'),
	( 'Voladores','2020/02/08','2020/02/08'),
	( 'Bacterias','2020/02/08','2020/02/08'),
	( 'Otros','2020/02/08','2020/02/08');
Select * from public.vectores;
--delete from public.vectores

INSERT INTO public.certificados(
	id_certificado, nro_certificado, fecha_aplicacion, fecha_vencimiento, hora_aplicacion, proximo_tratamiento, estado, 
	id_cliente, created_at, updated_at, id_rubro, id_tratamiento, id_vector, superficie, id_drogas, codigo, id_tipo_cliente, 
	observaciones_certificado, id_tecnico)
VALUES 	
(6,3019,'12/6/2009','12/10/2009','20:00:00','12/7/2009',true,1,'12/10/2009','12/10/2009',1,4,4,200,1,400,1,'nada',1);

Select * from public.certificados;
--delete from public.certificados

