{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_shader_clock

module Vulkan.Types.Struct.VkPhysicalDeviceShaderClockFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceShaderClockFeaturesKHR" #-} VkPhysicalDeviceShaderClockFeaturesKHR =
       VkPhysicalDeviceShaderClockFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , shaderSubgroupClock :: VkBool32
         , shaderDeviceClock :: VkBool32
         }

instance Storable VkPhysicalDeviceShaderClockFeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceShaderClockFeaturesKHR}
  alignment _ = #{alignment VkPhysicalDeviceShaderClockFeaturesKHR}

  peek ptr = 
    VkPhysicalDeviceShaderClockFeaturesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"shaderSubgroupClock" ptr)
       <*> peek (offset @"shaderDeviceClock" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"shaderSubgroupClock" ptr val
    pokeField @"shaderDeviceClock" ptr val

instance Offset "sType" VkPhysicalDeviceShaderClockFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderClockFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceShaderClockFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderClockFeaturesKHR, pNext}

instance Offset "shaderSubgroupClock" VkPhysicalDeviceShaderClockFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderClockFeaturesKHR, shaderSubgroupClock}

instance Offset "shaderDeviceClock" VkPhysicalDeviceShaderClockFeaturesKHR where
  rawOffset = #{offset VkPhysicalDeviceShaderClockFeaturesKHR, shaderDeviceClock}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceShaderClockFeaturesKHR where

#endif