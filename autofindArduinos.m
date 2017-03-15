function y = autofindArduinos()
%% Autofind Arduinos

ports=instrhwinfo('serial');
for i=1:length(ports.AvailableSerialPorts);
	try
		Arduinos = [Arduinos arduino(char(ports.AvailableSerialPorts(i)))];
	catch
		try
			Arduinos = arduino(char(ports.AvailableSerialPorts(i)));
		end
	end
end
y = Arduinos;
end