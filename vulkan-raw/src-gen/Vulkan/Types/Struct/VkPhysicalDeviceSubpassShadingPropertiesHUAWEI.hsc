{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkPhysicalDeviceSubpassShadingPropertiesHUAWEI}
  alignment _ = #{alignment VkPhysicalDeviceSubpassShadingPropertiesHUAWEI}

  peek ptr = 
    VkPhysicalDeviceSubpassShadingPropertiesHUAWEI
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxSubpassShadingWorkgroupSizeAspectRatio" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxSubpassShadingWorkgroupSizeAspectRatio" ptr val

instance Offset "sType" VkPhysicalDeviceSubpassShadingPropertiesHUAWEI where
  rawOffset = #{offset VkPhysicalDeviceSubpassShadingPropertiesHUAWEI, sType}

instance Offset "pNext" VkPhysicalDeviceSubpassShadingPropertiesHUAWEI where
  rawOffset = #{offset VkPhysicalDeviceSubpassShadingPropertiesHUAWEI, pNext}

instance Offset "maxSubpassShadingWorkgroupSizeAspectRatio" VkPhysicalDeviceSubpassShadingPropertiesHUAWEI where
  rawOffset = #{offset VkPhysicalDeviceSubpassShadingPropertiesHUAWEI, maxSubpassShadingWorkgroupSizeAspectRatio}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceSubpassShadingPropertiesHUAWEI where

#endif