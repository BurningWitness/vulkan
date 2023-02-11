{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_HUAWEI_subpass_shading

module Vulkan.Types.Struct.VkPhysicalDeviceSubpassShadingPropertiesHUAWEI where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceSubpassShadingPropertiesHUAWEI" #-} VkPhysicalDeviceSubpassShadingPropertiesHUAWEI =
       VkPhysicalDeviceSubpassShadingPropertiesHUAWEI
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxSubpassShadingWorkgroupSizeAspectRatio :: #{type uint32_t}
         }

instance Storable VkPhysicalDeviceSubpassShadingPropertiesHUAWEI where
  sizeOf    _ = #{size      struct VkPhysicalDeviceSubpassShadingPropertiesHUAWEI}
  alignment _ = #{alignment struct VkPhysicalDeviceSubpassShadingPropertiesHUAWEI}

  peek ptr = 
    VkPhysicalDeviceSubpassShadingPropertiesHUAWEI
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"maxSubpassShadingWorkgroupSizeAspectRatio" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxSubpassShadingWorkgroupSizeAspectRatio" ptr val

instance Offset "sType" VkPhysicalDeviceSubpassShadingPropertiesHUAWEI where
  rawOffset = #{offset struct VkPhysicalDeviceSubpassShadingPropertiesHUAWEI, sType}

instance Offset "pNext" VkPhysicalDeviceSubpassShadingPropertiesHUAWEI where
  rawOffset = #{offset struct VkPhysicalDeviceSubpassShadingPropertiesHUAWEI, pNext}

instance Offset "maxSubpassShadingWorkgroupSizeAspectRatio" VkPhysicalDeviceSubpassShadingPropertiesHUAWEI where
  rawOffset = #{offset struct VkPhysicalDeviceSubpassShadingPropertiesHUAWEI, maxSubpassShadingWorkgroupSizeAspectRatio}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceSubpassShadingPropertiesHUAWEI where

#endif