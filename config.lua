return {
	bot_api_key = "319730917:AAFcJ3hiQQ1A9qmkgPRCrXD5wva8PMNRcPk", --Please add your bot api key here!
	cmd = '^[/!#]',
	allowed_updates = {"message", "edited_message", "callback_query"},
	db = 2, --default redis db: 0
	superadmins = {20516707, 23646077, 278941742},
	log = {
		chat = -1117435401, --Your log chat, where your bot must be added!
		admin = 20516707, 23646077, --The admin.
		stats = nil
	},
	human_readable_version = '4.2.0',
	bot_settings = {
		cache_time = {
			adminlist = 18000, --5 hours (18000s) Admin Cache time, in seconds.
			alert_help = 72,  -- amount of hours for cache help alerts
			chat_titles = 18000
		},
		report = {
			duration = 1200,
			times_allowed = 2
		},
		notify_bug = false, --Notify if a bug occurs!
		log_api_errors = true, --Log errors, which happening whilst interacting with the bot api.
		stream_commands = true,
		admin_mode = false,
		debug_connections = false,
		realm_max_members = 60,
		realm_max_subgroups = 6
	},
	channel = '@groupbutler_beta', --channel username with the '@'
	source_code = 'https://github.com/RememberTheAir/GroupButler/tree/beta',
	help_groups_link = 'telegram.me/GBgroups',
	plugins = {
		'onmessage', --THIS MUST BE THE FIRST: IF AN USER IS FLOODING/IS BLOCKED, THE BOT WON'T GO THROUGH PLUGINS
		'antispam', --SAME OF onmessage.lua
		--'realms', --must stay here
		'backup',
		'banhammer',
		'block',
		'configure',
		'dashboard',
		'floodmanager',
		'help',
		'links',
		'logchannel',
		'mediasettings',
		'menu',
		'moderators',
		'pin',
		'private',
		'private_settings',
		'report',
		'rules',
		'service',
		'setlang',
		'users',
		'warn',
		'welcome',
		'admin',
		'extra', --must be the last plugin in the list.
	},
	multipurpose_plugins = {},
	available_languages = {
		['en'] = 'English ðŸ‡¬ðŸ‡§',
		['it'] = 'Italiano ðŸ‡®ðŸ‡¹',
		['es'] = 'EspaÃ±ol ðŸ‡ªðŸ‡¸',
		['pt_BR'] = 'PortuguÃªs ðŸ‡§ðŸ‡·',
		['ru'] = 'Ð ÑƒÑÑÐºÐ¸Ð¹ ðŸ‡·ðŸ‡º',
		['de'] = 'Deutsch ðŸ‡©ðŸ‡ª',
		--['sv'] = 'Svensk ðŸ‡¸ðŸ‡ª',
		['ar'] = 'Ø§Ù„Ø¹Ø±Ø¨ÙŠØ© ðŸ‡¸ðŸ‡©',
		--['fr'] = 'FranÃ§ais ðŸ‡«ðŸ‡·',
		['zh'] = 'ä¸­æ–‡ ðŸ‡¨ðŸ‡³',
		['fa'] = 'ÙØ§Ø±Ø³ÛŒ ðŸ‡®ðŸ‡·',
		['id'] = 'Bahasa Indonesia ðŸ‡®ðŸ‡©',
		['nl'] = 'Dutch ðŸ‡±ðŸ‡º'
		-- more languages will come
	},
	allow_fuzzy_translations = false,
	chat_settings = {
		['settings'] = {
			['Welcome'] = 'off',
			['Goodbye'] = 'off',
			['Extra'] = 'on',
			--['Flood'] = 'off',
			['Silent'] = 'off',
			['Rules'] = 'off',
			['Reports'] = 'off',
			['Welbut'] = 'off',
			['Antibot'] = 'off'
		},
		['antispam'] = {
			['links'] = 'alwd',
			['forwards'] = 'alwd',
			['warns'] = 2,
			['action'] = 'ban'
		},
		['flood'] = {
			['MaxFlood'] = 5,
			['ActionFlood'] = 'kick'
		},
		['char'] = {
			['Arab'] = 'allowed', --'kick'/'ban'
			['Rtl'] = 'allowed'
		},
		['floodexceptions'] = {
			['text'] = 'no',
			['photo'] = 'no', -- image
			['forward'] = 'no',
			['video'] = 'no',
			['sticker'] = 'no',
			['gif'] = 'no',
		},
		['warnsettings'] = {
			['type'] = 'ban',
			['mediatype'] = 'ban',
			['max'] = 3,
			['mediamax'] = 2
		},
		['welcome'] = {
			['type'] = 'no',
			['content'] = 'no'
		},
		['goodbye'] = {
			['type'] = 'custom',
		},
		['media'] = {
			['photo'] = 'ok', --'notok' | image
			['audio'] = 'ok',
			['video'] = 'ok',
			['sticker'] = 'ok',
			['gif'] = 'ok',
			['voice'] = 'ok',
			['contact'] = 'ok',
			['document'] = 'ok', -- file
			['link'] = 'ok',
			['game'] = 'ok',
			['location'] = 'ok'
		},
		['tolog'] = {
			['ban'] = 'no',
			['kick'] = 'no',
			['unban'] = 'no',
			['tempban'] = 'no',
			['report'] = 'no',
			['warn'] = 'no',
			['nowarn'] = 'no',
			['mediawarn'] = 'no',
			['spamwarn'] = 'no',
			['flood'] = 'no',
			['promote'] = 'no',
			['demote'] = 'no',
			['cleanmods'] = 'no',
			['new_chat_member'] = 'no',
			['new_chat_photo'] = 'no',
			['delete_chat_photo'] = 'no',
			['new_chat_title'] = 'no',
			['pinned_message'] = 'no',
			['blockban'] = 'no',
			['block'] = 'no',
			['unblock'] = 'no'
		},
		['modsettings'] = {
			['promdem'] = 'yes', --'yes': admins can promote or demote moderators; 'no': only the owner can
			['hammer'] = 'yes',
			['config'] = 'no',
			['texts'] = 'no'
		}
	},
	private_settings = {
		rules_on_join = 'off',
		reports = 'off'
	},
	chat_hashes = {'extra', 'info', 'links', 'warns', 'mediawarn', 'spamwarns', 'blocked', 'report'},
	chat_sets = {'whitelist', 'mods'},
	bot_keys = {
		d3 = {'bot:general', 'bot:usernames', 'bot:chat:latsmsg'},
		d2 = {'bot:groupsid', 'bot:groupsid:removed', 'tempbanned', 'bot:blocked', 'remolden_chats'} --remolden_chats: chat removed with $remold command
	}
}
