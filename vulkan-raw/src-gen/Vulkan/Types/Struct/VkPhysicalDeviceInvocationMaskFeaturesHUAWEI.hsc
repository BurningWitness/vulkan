{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_HUAWEI_invocation_mask

module Vulkan.Types.Struct.VkPhysicalDeviceInvocationMaskFeaturesHUAWEI where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceInvocationMaskFeaturesHUAWEI" #-} VkPhysicalDeviceInvocationMaskFeaturesHUAWEI =
       VkPhysicalDeviceInvocationMaskFeaturesHUAWEI
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , invocationMask :: VkBool32
         }

instance Storable VkPhysicalDeviceInvocationMaskFeaturesHUAWEI where
  sizeOf    _ = #{size      VkPhysicalDeviceInvocationMaskFeaturesHUAWEI}
  alignment _ = #{alignment VkPhysicalDeviceInvocationMaskFeaturesHUAWEI}

  peek ptr = 
    VkPhysicalDeviceInvocationMaskFeaturesHUAWEI
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"invocationMask" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"invocationMask" ptr val

instance Offset "sType" VkPhysicalDeviceInvocationMaskFeaturesHUAWEI where
  rawOffset = #{offset VkPhysicalDeviceInvocationMaskFeaturesHUAWEI, sType}

instance Offset "pNext" VkPhysicalDeviceInvocationMaskFeaturesHUAWEI where
  rawOffset = #{offset VkPhysicalDeviceInvocationMaskFeaturesHUAWEI, pNext}

instance Offset "invocationMask" VkPhysicalDeviceInvocationMaskFeaturesHUAWEI where
  rawOffset = #{offset VkPhysicalDeviceInvocationMaskFeaturesHUAWEI, invocationMask}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceInvocationMaskFeaturesHUAWEI where

#endif