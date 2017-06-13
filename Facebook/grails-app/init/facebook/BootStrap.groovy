package facebook

import com.grailsbrains.Auth.Role
import com.grailsbrains.Auth.User
import com.grailsbrains.Auth.UserRole

class BootStrap {

    def init = {

        def adminRole = new Role(authority: 'ROLE_ADMIN').save()

        def testUser = new User(username: 'me', password: 'password').save()

        UserRole.create testUser, adminRole

        UserRole.withSession {
            it.flush()
            it.clear()
        }

        assert User.count() == 1
        assert Role.count() == 1
        assert UserRole.count() == 1

    }
}