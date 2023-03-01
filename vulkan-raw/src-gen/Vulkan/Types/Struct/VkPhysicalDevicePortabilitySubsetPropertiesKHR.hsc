{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_portability_subset

module Vulkan.Types.Struct.VkPhysicalDevicePortabilitySubsetPropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDevicePortabilitySubsetPropertiesKHR" #-} VkPhysicalDevicePortabilitySubsetPropertiesKHR =
       VkPhysicalDevicePortabilitySubsetPropertiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , minVertexInputBindingStrideAlignment :: #{type uint32_t}
         }

instance Storable VkPhysicalDevicePortabilitySubsetPropertiesKHR where
  sizeOf    _ = #{size      VkPhysicalDevicePortabilitySubsetPropertiesKHR}
  alignment _ = #{alignment VkPhysicalDevicePortabilitySubsetPropertiesKHR}

  peek ptr = 
    VkPhysicalDevicePortabilitySubsetPropertiesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minVertexInputBindingStrideAlignment" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"minVertexInputBindingStrideAlignment" ptr val

instance Offset "sType" VkPhysicalDevicePortabilitySubsetPropertiesKHR where
  rawOffset = #{offset VkPhysicalDevicePortabilitySubsetPropertiesKHR, sType}

instance Offset "pNext" VkPhysicalDevicePortabilitySubsetPropertiesKHR where
  rawOffset = #{offset VkPhysicalDevicePortabilitySubsetPropertiesKHR, pNext}

instance Offset "minVertexInputBindingStrideAlignment" VkPhysicalDevicePortabilitySubsetPropertiesKHR where
  rawOffset = #{offset VkPhysicalDevicePortabilitySubsetPropertiesKHR, minVertexInputBindingStrideAlignment}

#else

module Vulkan.Types.Struct.VkPhysicalDevicePortabilitySubsetPropertiesKHR where

#endif