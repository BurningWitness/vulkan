{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_encode_queue

module Vulkan.Types.Struct.VkVideoEncodeRateControlInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkVideoEncodeRateControlFlagsKHR
import Vulkan.Types.Enum.VkVideoEncodeRateControlModeFlagBitsKHR
import Vulkan.Types.Struct.VkVideoEncodeRateControlLayerInfoKHR



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeRateControlInfoKHR" #-} VkVideoEncodeRateControlInfoKHR =
       VkVideoEncodeRateControlInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkVideoEncodeRateControlFlagsKHR
         , rateControlMode :: VkVideoEncodeRateControlModeFlagBitsKHR
         , layerCount :: #{type uint8_t}
         , pLayerConfigs :: Ptr VkVideoEncodeRateControlLayerInfoKHR
         }

instance Storable VkVideoEncodeRateControlInfoKHR where
  sizeOf    _ = #{size      VkVideoEncodeRateControlInfoKHR}
  alignment _ = #{alignment VkVideoEncodeRateControlInfoKHR}

  peek ptr = 
    VkVideoEncodeRateControlInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"rateControlMode" ptr)
       <*> peek (offset @"layerCount" ptr)
       <*> peek (offset @"pLayerConfigs" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"rateControlMode" ptr val
    pokeField @"layerCount" ptr val
    pokeField @"pLayerConfigs" ptr val

instance Offset "sType" VkVideoEncodeRateControlInfoKHR where
  rawOffset = #{offset VkVideoEncodeRateControlInfoKHR, sType}

instance Offset "pNext" VkVideoEncodeRateControlInfoKHR where
  rawOffset = #{offset VkVideoEncodeRateControlInfoKHR, pNext}

instance Offset "flags" VkVideoEncodeRateControlInfoKHR where
  rawOffset = #{offset VkVideoEncodeRateControlInfoKHR, flags}

instance Offset "rateControlMode" VkVideoEncodeRateControlInfoKHR where
  rawOffset = #{offset VkVideoEncodeRateControlInfoKHR, rateControlMode}

instance Offset "layerCount" VkVideoEncodeRateControlInfoKHR where
  rawOffset = #{offset VkVideoEncodeRateControlInfoKHR, layerCount}

instance Offset "pLayerConfigs" VkVideoEncodeRateControlInfoKHR where
  rawOffset = #{offset VkVideoEncodeRateControlInfoKHR, pLayerConfigs}

#else

module Vulkan.Types.Struct.VkVideoEncodeRateControlInfoKHR where

#endif