{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_HUAWEI_subpass_shading

module Vulkan.Types.Struct.VkPhysicalDeviceSubpassShadingFeaturesHUAWEI where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceSubpassShadingFeaturesHUAWEI" #-} VkPhysicalDeviceSubpassShadingFeaturesHUAWEI =
       VkPhysicalDeviceSubpassShadingFeaturesHUAWEI
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , subpassShading :: VkBool32
         }

instance Storable VkPhysicalDeviceSubpassShadingFeaturesHUAWEI where
  sizeOf    _ = #{size      struct VkPhysicalDeviceSubpassShadingFeaturesHUAWEI}
  alignment _ = #{alignment struct VkPhysicalDeviceSubpassShadingFeaturesHUAWEI}

  peek ptr = 
    VkPhysicalDeviceSubpassShadingFeaturesHUAWEI
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"subpassShading" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"subpassShading" ptr val

instance Offset "sType" VkPhysicalDeviceSubpassShadingFeaturesHUAWEI where
  rawOffset = #{offset struct VkPhysicalDeviceSubpassShadingFeaturesHUAWEI, sType}

instance Offset "pNext" VkPhysicalDeviceSubpassShadingFeaturesHUAWEI where
  rawOffset = #{offset struct VkPhysicalDeviceSubpassShadingFeaturesHUAWEI, pNext}

instance Offset "subpassShading" VkPhysicalDeviceSubpassShadingFeaturesHUAWEI where
  rawOffset = #{offset struct VkPhysicalDeviceSubpassShadingFeaturesHUAWEI, subpassShading}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceSubpassShadingFeaturesHUAWEI where

#endif