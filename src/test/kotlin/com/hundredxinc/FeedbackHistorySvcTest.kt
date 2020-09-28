package com.hundredxinc
import io.micronaut.runtime.EmbeddedApplication
import io.micronaut.test.annotation.MicronautTest
import io.kotest.core.spec.style.StringSpec

@MicronautTest
class FeedbackHistorySvcTest(private val application: EmbeddedApplication<*>): StringSpec({

    "test the server is running" {
        assert(application.isRunning)
    }
})
