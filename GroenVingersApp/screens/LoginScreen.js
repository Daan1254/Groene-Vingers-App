import { View, Text, SafeAreaView, StyleSheet } from 'react-native';
import { TextInput, HelperText, Button } from 'react-native-paper';
import React from 'react'
import Pressable from 'react-native/Libraries/Components/Pressable/Pressable';

const LoginScreen = () => {
    const [Username, onChangeUsername] = React.useState('');
    const [Password, onChangePassword] = React.useState('');
    const [ValidationColor, setValidationColor] = React.useState('green');

    const hasErrors = () => {
        return !Username.includes('@');
    };
    const login = () => {
        hasErrors();
        console.log(Username, Password)
    };
    return (
        <View >
            <View style={styles.LoginSection}>
                <TextInput
                    theme={{
                        roundness: 20,
                        colors: {
                            primary: {ValidationColor},
                            underlineColor: 'transparent',

                        }
                    }}
                    mode="outlined"
                    placeholderTextColor="#FFFFF"
                    label="Username"
                    style={styles.input}
                    onChangeText={onChangeUsername}
                    value={Username}
                    right={<TextInput.Affix text="/100" />}
                />
                <HelperText type="error" visible={hasErrors()}>
                    E-mailadres is ongeldig!
                </HelperText>
                <TextInput
                    theme={{
                        roundness: 20,
                        colors: {
                            primary: {ValidationColor},
                            underlineColor: 'transparent',

                        }
                    }}
                    mode="outlined"
                    label="password"
                    style={styles.input}
                    onChangeText={onChangePassword}
                    secureTextEntry

                    right={<TextInput.Affix text="/100" />}
                />
                <SafeAreaView style={styles.ButtonsArea}>
                    <Button
                        style={styles.BtnLogin} mode="contained"
                        onPress={() => login()}
                        theme={{
                            roundness: 20,
                            colors: {
                                primary: 'green',
                                underlineColor: 'transparent',

                            }
                        }}>
                           <Text>Inloggen</Text>
                    </Button>
                    <Pressable style={styles.BtnRegistreren} >
                        <Text>Registreren</Text>
                    </Pressable>
                </SafeAreaView>
            </View>
        </View>
    )

}

const styles = StyleSheet.create({
    input: {
        borderColor: "FFFFF",
        color: "green",
        height: 50,
        margin: 12,
    },
    LoginSection: {
        marginTop: 200,
        height: 400,
    },
    BtnLogin: {
        // center text vertically
        textAlignVertical: 'center',
        marginTop: 30,
        height: '50%',
        textAlign: 'center',
        width: '500px'
    },
    ButtonsArea: {
        marginLeft: 'auto',
        marginRight: 'auto',
        width: '90%',
        height: '50%',
        marginTop: 20
    },
    BtnRegistreren: {
        // center text vertically
        textAlignVertical: 'center',
        // center text horizontally
        alignSelf: 'center',
        marginTop: 0,
        marginLeft: 'auto',
        marginRight: 'auto',
    },
    BtnLoginTXT: {

    }
});




export default LoginScreen