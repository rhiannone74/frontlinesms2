package frontlinesms2.settings

import frontlinesms2.*

import spock.lang.*

class ChangeLanguageSpec extends grails.plugin.geb.GebSpec {
	def 'language list should be available on the settings page and should be sorted alphabetically'() {
		when:
			to PageGeneralSettings
		then:
			languageList.children()*.text()== ['English', 'Deutsch', 'English', 'Español', 'French', 'Indonesian', 'Japanese', 'Khmer', 'Kiswahili', 'Nederlands', 'Português', 'Русский', 'العربية']
	}
}

