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
