{ config, ... }: 

{
	systemd.services.bcj_transcriber = {
		wantedBy = [ "multi-user.target" ];
		enable = false;
		script = ''/home/bcj115/code/whisper-form/start.sh'';
		serviceConfig = {
			User = "bcj115";
			Group = "bcj115";
		};
	};
}
