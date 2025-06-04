import {
    Disclosure,
    DisclosureButton,
    DisclosurePanel,
    Menu,
    MenuButton,
    MenuItem,
    MenuItems,
    Transition,
} from '@headlessui/react'
import {Bars3Icon, BellIcon, XMarkIcon} from '@heroicons/react/24/outline'
import useAuth from '../../../hooks/useAuth.hook.ts'
import {useNavigate} from 'react-router-dom'
import CursusLogo from '../../../../public/images/logo/CURSUSLOGO.svg';
import Button from '../../general/Button.tsx';
import {PATH_ADMIN, PATH_INSTRUCTOR, PATH_PUBLIC} from "../../../routes/paths.ts";
import {RolesEnum} from "../../../types/auth.types.ts";

const navigation = [
    {name: 'Home', path: PATH_PUBLIC.home, current: false},
    {name: 'Courses', path: PATH_PUBLIC.courses, current: false},
]

function classNames(...classes: any[]) {
    return classes.filter(Boolean).join(' ')
}

const Header = () => {

    const {isAuthenticated, user, signOut} = useAuth();
    const navigate = useNavigate();

    return (
        <Disclosure as="nav" className="bg-gray-800">
            {({open}) => (
                <>
                    <div className="mx-auto max-w-7xl px-6 sm:px-6 lg:px-6">
                        <div className="relative flex h-16 items-center justify-between">
                            <div className="absolute inset-y-0 left-0 flex items-center sm:hidden">
                                {/* Mobile menu button*/}
                                <DisclosureButton
                                    className="relative inline-flex items-center justify-center rounded-md p-2 text-gray-400 hover:bg-gray-700 hover:text-white focus:outline-none focus:ring-2 focus:ring-inset focus:ring-white">
                                    <span className="absolute -inset-0.5"/>
                                    <span className="sr-only">Open main menu</span>
                                    {open ? (
                                        <XMarkIcon className="block h-6 w-6" aria-hidden="true"/>
                                    ) : (
                                        <Bars3Icon className="block h-6 w-6" aria-hidden="true"/>
                                    )}
                                </DisclosureButton>
                            </div>
                            <div className="flex flex-1 items-center justify-center sm:items-stretch sm:justify-start">
                                <div className="flex flex-shrink-0 items-center">
                                    <img
                                        className="h-8 w-auto"
                                        src={CursusLogo}
                                        alt="Cursus LMS Website"
                                    />
                                </div>
                                <div className="hidden sm:ml-6 sm:block">
                                    <div className="flex space-x-4">
                                        {navigation.map((item) => (
                                            <button
                                                key={item.name}
                                                onClick={() => navigate(item.path)}
                                                className={classNames(
                                                    item.current ? 'bg-gray-900 text-white' : 'text-gray-300 hover:bg-gray-700 hover:text-white',
                                                    'rounded-md px-3 py-2 text-sm font-medium'
                                                )}
                                                aria-current={item.current ? 'page' : undefined}
                                            >
                                                {item.name}
                                            </button>
                                        ))}
                                    </div>
                                </div>
                            </div>
                            {
                                isAuthenticated
                                    ?
                                    (
                                        <div
                                            className="absolute inset-y-0 right-0 flex items-center pr-2 sm:static sm:inset-auto sm:ml-6 sm:pr-0">
                                            <button
                                                type="button"
                                                className="relative rounded-full bg-gray-800 p-1 text-gray-400 hover:text-white focus:outline-none focus:ring-2 focus:ring-white focus:ring-offset-2 focus:ring-offset-gray-800"
                                            >
                                                <span className="absolute -inset-1.5"/>
                                                <span className="sr-only">View notifications</span>
                                                <BellIcon className="h-6 w-6" aria-hidden="true"/>
                                            </button>

                                            {/* Profile dropdown */}
                                            <Menu as="div" className="relative ml-3">
                                                <div>
                                                    <MenuButton
                                                        className="relative flex rounded-full bg-gray-800 text-sm focus:outline-none focus:ring-2 focus:ring-white focus:ring-offset-2 focus:ring-offset-gray-800">
                                                        <span className="absolute -inset-1.5"/>
                                                        <span className="sr-only">Open user menu</span>
                                                        <img
                                                            className="h-8 w-8 rounded-full"
                                                            src=""
                                                            alt=""
                                                        />
                                                    </MenuButton>
                                                </div>
                                                <Transition
                                                    enter="transition ease-out duration-100"
                                                    enterFrom="transform opacity-0 scale-95"
                                                    enterTo="transform opacity-100 scale-100"
                                                    leave="transition ease-in duration-75"
                                                    leaveFrom="transform opacity-100 scale-100"
                                                    leaveTo="transform opacity-0 scale-95"
                                                >
                                                    <MenuItems
                                                        className="absolute right-0 z-10 mt-2 w-48 origin-top-right rounded-md bg-white py-1 shadow-lg ring-1 ring-black ring-opacity-5 focus:outline-none">

                                                        <MenuItem>
                                                            {({focus}) => (
                                                                <a
                                                                    className={classNames(focus ? 'bg-gray-100' : '', 'block px-4 py-2 text-sm text-gray-700 cursor-pointer')}
                                                                >
                                                                    {user?.fullName}
                                                                </a>
                                                            )}
                                                        </MenuItem>


                                                        {
                                                            user?.roles[0] === RolesEnum.ADMIN ?
                                                                <MenuItem>
                                                                    {({focus}) => (
                                                                        <a
                                                                            onClick={() => navigate(PATH_ADMIN.dashboard)}
                                                                            className={classNames(focus ? 'bg-gray-100' : '', 'block px-4 py-2 text-sm text-gray-700 cursor-pointer')}
                                                                        >
                                                                            Workspace
                                                                        </a>
                                                                    )}
                                                                </MenuItem>
                                                                :
                                                                <></>
                                                        }

                                                        {
                                                            user?.roles[0] === RolesEnum.INSTRUCTOR ?
                                                                <MenuItem>
                                                                    {({focus}) => (
                                                                        <a
                                                                            onClick={() => navigate(PATH_INSTRUCTOR.dashboard)}
                                                                            className={classNames(focus ? 'bg-gray-100' : '', 'block px-4 py-2 text-sm text-gray-700 cursor-pointer')}
                                                                        >
                                                                            Workspace
                                                                        </a>
                                                                    )}
                                                                </MenuItem>
                                                                :
                                                                <></>
                                                        }
                                                        <MenuItem>
                                                            {({focus}) => (
                                                                <a
                                                                    onClick={() => navigate('ddd')}
                                                                    className={classNames(focus ? 'bg-gray-100' : '', 'block px-4 py-2 text-sm text-gray-700 cursor-pointer')}
                                                                >
                                                                    Your Profile
                                                                </a>
                                                            )}
                                                        </MenuItem>

                                                        <MenuItem>
                                                            {({focus}) => (
                                                                <a
                                                                    onClick={() => navigate('')}
                                                                    className={classNames(focus ? 'bg-gray-100' : '', 'block px-4 py-2 text-sm text-gray-700 cursor-pointer')}
                                                                >
                                                                    Settings
                                                                </a>
                                                            )}
                                                        </MenuItem>

                                                        <MenuItem>
                                                            {({focus}) => (
                                                                <a
                                                                    onClick={signOut}
                                                                    className={classNames(focus ? 'bg-gray-100' : '', 'block px-4 py-2 text-sm text-gray-700 cursor-pointer')}
                                                                >
                                                                    Sign out
                                                                </a>
                                                            )}
                                                        </MenuItem>

                                                    </MenuItems>
                                                </Transition>
                                            </Menu>
                                        </div>
                                    )
                                    :
                                    (
                                        <div
                                            className="absolute inset-y-0 right-0 flex items-center pr-2 sm:static sm:inset-auto sm:ml-6 sm:pr-0">
                                            <div className="flex space-x-4">

                                                <Button
                                                    variant='light'
                                                    type='button'
                                                    label='Sign Up'
                                                    onClick={() => navigate(PATH_PUBLIC.signUpStudent)}
                                                />

                                                <Button
                                                    variant='primary'
                                                    type='button'
                                                    label='Sign In'
                                                    onClick={() => navigate(PATH_PUBLIC.signIn)}
                                                />
                                            </div>
                                        </div>
                                    )
                            }
                        </div>
                    </div>

                    <DisclosurePanel className="sm:hidden">
                        <div className="space-y-1 px-2 pb-3 pt-2">
                            {navigation.map((item) => (
                                <DisclosureButton
                                    key={item.name}
                                    as="a"
                                    href={item.path}
                                    className={classNames(
                                        item.current ? 'bg-gray-900 text-white' : 'text-gray-300 hover:bg-gray-700 hover:text-white',
                                        'block rounded-md px-3 py-2 text-base font-medium'
                                    )}
                                    aria-current={item.current ? 'page' : undefined}
                                >
                                    {item.name}
                                </DisclosureButton>
                            ))}
                        </div>
                    </DisclosurePanel>
                </>
            )}
        </Disclosure>
    )
}

export default Header;