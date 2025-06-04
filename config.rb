# Hours shown on the day schedule. You can leave nils if you want a blank to write in.
HOUR_LABELS = [nil, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, nil]
HOUR_COUNT = HOUR_LABELS.length
COLUMN_COUNT = 4
LIGHT_COLOR = 'AAAAAA'
MEDIUM_COLOR = '888888'
DARK_COLOR   = '000000'
LINUX_FONT_PATH = "/usr/share/fonts/truetype/dejavu/DejaVuSansMono.ttf"
UBUNTU_FONT_PATH = "/usr/share/fonts/truetype/ubuntu/UbuntuMono-R.ttf"
FONTS = {
  'Ubuntu Mono' => {
    normal:    { file: UBUNTU_FONT_PATH, font: 'Ubuntu Mono' },
    italic:    { file: "/usr/share/fonts/truetype/ubuntu/UbuntuMono-RI.ttf", font: 'Ubuntu Mono Italic' },
    bold:      { file: "/usr/share/fonts/truetype/ubuntu/UbuntuMono-B.ttf", font: 'Ubuntu Mono Bold' },
    condensed: { file: UBUNTU_FONT_PATH, font: 'Ubuntu Mono' },
  }
}
PAGE_SIZE = 'LETTER' # Could also do 'A4'
# Order is top, right, bottom, left
LEFT_PAGE_MARGINS = [36, 72, 36, 36]
RIGHT_PAGE_MARGINS = [36, 36, 36, 72]

# Adjust the quarters to a fiscal year, 1 for Jan, 2 for Feb, etc.
Q1_START_MONTH = 1
QUARTERS_BY_MONTH = (1..12).map { |month| (month / 3.0).ceil }.rotate(1 - Q1_START_MONTH).unshift(nil)

# Adjust the start of semesters
SUMMER_SEMESTER_START = 4 # April
WINTER_SEMESTER_START = 10 # October

# Use these if you have sprints of a weekly interval
SPRINT_EPOCH = Date.parse('2023-01-04')
SPRINT_LENGTH = 21

def one_on_ones_for sunday
  # Weekly
  sun = []
  mon = []
  tue = %w(Randy)
  wed = %w(Jose Jason)
  thr = %w(Amulya)
  fri = []
  sat = []

  # Biweekly
  cweek = sunday.cweek
  wed << 'Jose Luis' if cweek % 2 == 0
  wed << 'Mamatha'   if cweek % 2 == 1

  # Monthly
  tue << 'Tyler'     if cweek % 4 == 1
  wed << 'Guerrero'  if cweek % 4 == 3

  [sun, mon, tue, wed, thr, fri, sat]
end

# Repeating tasks by day of week, 0 is Sunday. Nested index is the row.
TASKS_BY_WDAY = [
  {},
  {},
  {},
  {},
  {},
  {},
  {},
]

# Repeating Appointments by day of week, 0 is Sunday. Nested index is a value in HOUR_LABELS.
APPOINTMENTS_BY_WDAY = [
  {},
  {},
  {},
  {},
  {},
  {},
  {},
]
