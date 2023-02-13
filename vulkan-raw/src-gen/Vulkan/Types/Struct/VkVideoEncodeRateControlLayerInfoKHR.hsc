{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_encode_queue

module Vulkan.Types.Struct.VkVideoEncodeRateControlLayerInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeRateControlLayerInfoKHR" #-} VkVideoEncodeRateControlLayerInfoKHR =
       VkVideoEncodeRateControlLayerInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , averageBitrate :: #{type uint32_t}
         , maxBitrate :: #{type uint32_t}
         , frameRateNumerator :: #{type uint32_t}
         , frameRateDenominator :: #{type uint32_t}
         , virtualBufferSizeInMs :: #{type uint32_t}
         , initialVirtualBufferSizeInMs :: #{type uint32_t}
         }

instance Storable VkVideoEncodeRateControlLayerInfoKHR where
  sizeOf    _ = #{size      VkVideoEncodeRateControlLayerInfoKHR}
  alignment _ = #{alignment VkVideoEncodeRateControlLayerInfoKHR}

  peek ptr = 
    VkVideoEncodeRateControlLayerInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"averageBitrate" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxBitrate" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"frameRateNumerator" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"frameRateDenominator" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"virtualBufferSizeInMs" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"initialVirtualBufferSizeInMs" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"averageBitrate" ptr val
    pokeField @"maxBitrate" ptr val
    pokeField @"frameRateNumerator" ptr val
    pokeField @"frameRateDenominator" ptr val
    pokeField @"virtualBufferSizeInMs" ptr val
    pokeField @"initialVirtualBufferSizeInMs" ptr val

instance Offset "sType" VkVideoEncodeRateControlLayerInfoKHR where
  rawOffset = #{offset VkVideoEncodeRateControlLayerInfoKHR, sType}

instance Offset "pNext" VkVideoEncodeRateControlLayerInfoKHR where
  rawOffset = #{offset VkVideoEncodeRateControlLayerInfoKHR, pNext}

instance Offset "averageBitrate" VkVideoEncodeRateControlLayerInfoKHR where
  rawOffset = #{offset VkVideoEncodeRateControlLayerInfoKHR, averageBitrate}

instance Offset "maxBitrate" VkVideoEncodeRateControlLayerInfoKHR where
  rawOffset = #{offset VkVideoEncodeRateControlLayerInfoKHR, maxBitrate}

instance Offset "frameRateNumerator" VkVideoEncodeRateControlLayerInfoKHR where
  rawOffset = #{offset VkVideoEncodeRateControlLayerInfoKHR, frameRateNumerator}

instance Offset "frameRateDenominator" VkVideoEncodeRateControlLayerInfoKHR where
  rawOffset = #{offset VkVideoEncodeRateControlLayerInfoKHR, frameRateDenominator}

instance Offset "virtualBufferSizeInMs" VkVideoEncodeRateControlLayerInfoKHR where
  rawOffset = #{offset VkVideoEncodeRateControlLayerInfoKHR, virtualBufferSizeInMs}

instance Offset "initialVirtualBufferSizeInMs" VkVideoEncodeRateControlLayerInfoKHR where
  rawOffset = #{offset VkVideoEncodeRateControlLayerInfoKHR, initialVirtualBufferSizeInMs}

#else

module Vulkan.Types.Struct.VkVideoEncodeRateControlLayerInfoKHR where

#endif