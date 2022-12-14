/*
 * Copyright (C) 2020 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.media;

import android.content.AttributionSourceState;
import android.media.EffectDescriptor;
import android.media.IEffectClient;
import android.media.audio.common.AudioDevice;

/**
 * Input arguments of the createEffect() method.
 *
 * {@hide}
 */
parcelable CreateEffectRequest {
    EffectDescriptor desc;
    @nullable IEffectClient client;
    int priority;
    /** Interpreted as audio_io_handle_t. */
    int output;
    /** Interpreted as audio_session_t. */
    int sessionId;
    AudioDevice device;
    AttributionSourceState attributionSource;
    boolean probe;
    /** true if a callback must be sent each time audio frames are processed */
    boolean notifyFramesProcessed;
}
