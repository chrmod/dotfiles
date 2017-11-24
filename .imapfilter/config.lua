

-- One of the work mailservers is slow.
-- The time in seconds for the program to wait for a mail server's response (default 60)
options.timeout = 120

-- According to the IMAP specification, when trying to write a message to a non-existent mailbox, the server must send a hint to the client, whether it should create the mailbox and try again or not. However some IMAP servers don't follow the specification and don't send the correct response code to the client. By enabling this option the client tries to create the mailbox, despite of the server's response.
options.create = true

-- By enabling this option new mailboxes that were automatically created, get also subscribed; they are set active in order for IMAP clients to recognize them
options.subscribe = true

-- Normally, messages are marked for deletion and are actually deleted when the mailbox is closed. When this option is enabled, messages are expunged immediately after being marked deleted.
options.expunge = true

function get_text (path)
  local status
  local value
  status, value = pipe_from('cat ' .. path)
  value = string.gsub(value, ' ', '')
  value = string.gsub(value, '\n', '')
  return value
end

account1 = IMAP {
  server = "outlook.office365.com",
  username = "krzysztof@cliqz.com",
  password = get_text('~/.config/mutt/password-work'),
  ssl = "tls1"
}

messages = account1["INBOX"]:contain_to("browser-core@cliqz.com")
messages:move_messages(account1["notifications/browser-core"])
