import { View, Text, SafeAreaView, StyleSheet } from 'react-native';
import { TextInput, HelperText, Button } from 'react-native-paper';
import React from 'react'
import Pressable from 'react-native/Libraries/Components/Pressable/Pressable';

const LoginScreen = () => {
    const [Username, onChangeUsername] = React.useState('Voorbeeld@hotmail.com');
    const [Password, onChangePassword] = React.useState('');

    const hasErrors = () => {
        return !Username.includes('@');
    };
    const login =  () => {
        console.log(Username,Password)
    };
    return (
        <View >
            <View style={styles.LoginSection}>
                <TextInput
                   theme={{ colors: { text: 'blue' } }}
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
                 
                    mode="outlined"
                    label="password"
                    style={styles.input}
                    onChangeText={onChangePassword}
                    secureTextEntry
                    
                    right={<TextInput.Affix text="/100" />}
                />
                <SafeAreaView style={styles.ButtonsArea}>
                    <Button style={styles.BtnLogin} mode="contained" onPress={() => login()} >
                        inloggen
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
        borderColor:"FFFFF",
        color:"green",
        height: 50,
        margin: 12,
    },
    LoginSection: {
        marginTop: 200,
        height: 500,
    },
    BtnLogin: {
        marginTop: 30
    },
    ButtonsArea:{
        marginTop: 30
    },
    BtnRegistreren: {
        marginTop: 30,
        marginLeft: 'auto',
        marginRight: 'auto',
    }
});




export default LoginScreen