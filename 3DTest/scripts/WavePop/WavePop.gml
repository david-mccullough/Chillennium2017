switch argument0
{
	case 0:
	
		ds_list_clear(waves)
		var wave = 0;
		wave[0] = O_ENEMYBB

		ds_list_add(waves,wave)

		var wave = 0
		wave[0] = O_ENEMYBA
		wave[1] = O_ENEMYBB



		ds_list_add(waves,wave)

		var wave = 0;
		wave[0] = O_ENEMYSA
		wave[1] = O_ENEMYSA
		wave[2] = O_ENEMYSA

		ds_list_add(waves,wave)
		
		break;
		
	case 1:
		ds_list_clear(waves)
		var wave = 0;
		wave[0] = O_ENEMYSB

		ds_list_add(waves,wave)

		var wave = 0;
		wave[0] = O_ENEMYSA
		wave[1] = O_ENEMYSB

		ds_list_add(waves,wave)

		var wave = 0;
		wave[0] = O_ENEMYSB
		wave[1] = O_ENEMYSA
		wave[2] = O_ENEMYSB
		wave[3] = O_ENEMYSA
		wave[4] = O_ENEMYSA

		ds_list_add(waves,wave)
		break;
		
	case 2:
		ds_list_clear(waves)
		var wave = 0;
		wave[0] = O_ENEMYDA

		ds_list_add(waves,wave)

		var wave = 0;
		wave[0] = O_ENEMYTA
		wave[1] = O_ENEMYSB

		ds_list_add(waves,wave)

		var wave = 0;
		wave[0] = O_ENEMYDB
		wave[1] = O_ENEMYDA
		wave[2] = O_ENEMYDB
		wave[3] = O_ENEMYDA

		ds_list_add(waves,wave)
		
		var wave = 0;
		wave[0] = O_ENEMYTB
		wave[1] = O_ENEMYTA
		wave[2] = O_ENEMYTB

		ds_list_add(waves,wave)
		break;
		
	case 3:
		ds_list_clear(waves)
		var wave = 0;

		var wave = 0;
		wave[0] = O_ENEMYBB
		wave[1] = O_ENEMYBA
		wave[2] = O_ENEMYBB
		wave[3] = O_ENEMYBA
		wave[4] = O_ENEMYBB
		wave[5] = O_ENEMYBA
		wave[6] = O_ENEMYBB

		ds_list_add(waves,wave)
		break;
		
		default:
		break;
}




