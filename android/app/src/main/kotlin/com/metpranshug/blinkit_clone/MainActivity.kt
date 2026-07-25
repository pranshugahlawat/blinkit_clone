package com.metpranshug.blinkit_clone

import android.os.Bundle
import androidx.activity.enableEdgeToEdge
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.*

/**
 * Using FlutterFragmentActivity instead of FlutterActivity for better plugin compatibility.
 */
class MainActivity : FlutterFragmentActivity() {

    private val uiScope = CoroutineScope(Dispatchers.Main + Job())

    override fun onCreate(savedInstanceState: Bundle?) {
        // Modern way to enable edge-to-edge
        enableEdgeToEdge()
        super.onCreate(savedInstanceState)
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        setupMethodChannels(flutterEngine)
    }

    private fun setupMethodChannels(flutterEngine: FlutterEngine) {
        val messenger = flutterEngine.dartExecutor.binaryMessenger

        MethodChannel(messenger, CHANNEL).setMethodCallHandler { call: MethodCall, result: MethodChannel.Result ->
            when (call.method) {
                Methods.GET_NATIVE_DATA -> handleGetNativeData(result)
                else -> result.notImplemented()
            }
        }
    }

    private fun handleGetNativeData(result: MethodChannel.Result) {
        // Use Coroutines for potentially long-running or I/O tasks
        uiScope.launch {
            try {
                val data = withContext(Dispatchers.IO) {
                    // Simulate fetching complex data
                    fetchDataFromSource()
                }
                result.success(data)
            } catch (e: Exception) {
                result.error("UNAVAILABLE", "Fetch failed", e.localizedMessage)
            }
        }
    }

    override fun onDestroy() {
        super.onDestroy()
        // Cancel coroutines when activity is destroyed to avoid memory leaks
        uiScope.cancel()
    }

    private fun fetchDataFromSource(): String {
        // Replace with actual native logic
        return "Data from Android (Refactored)"
    }

    companion object {
        private const val CHANNEL = "com.metpranshug.blinkit_clone/native"

        // Define method names in a structured way
        object Methods {
            const val GET_NATIVE_DATA = "getNativeData"
        }
    }
}