{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_external_memory_host

module Vulkan.Types.Struct.VkPhysicalDeviceExternalMemoryHostPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceExternalMemoryHostPropertiesEXT" #-} VkPhysicalDeviceExternalMemoryHostPropertiesEXT =
       VkPhysicalDeviceExternalMemoryHostPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , minImportedHostPointerAlignment :: VkDeviceSize
         }

instance Storable VkPhysicalDeviceExternalMemoryHostPropertiesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceExternalMemoryHostPropertiesEXT}
  alignment _ = #{alignment VkPhysicalDeviceExternalMemoryHostPropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceExternalMemoryHostPropertiesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minImportedHostPointerAlignment" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"minImportedHostPointerAlignment" ptr val

instance Offset "sType" VkPhysicalDeviceExternalMemoryHostPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceExternalMemoryHostPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceExternalMemoryHostPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceExternalMemoryHostPropertiesEXT, pNext}

instance Offset "minImportedHostPointerAlignment" VkPhysicalDeviceExternalMemoryHostPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceExternalMemoryHostPropertiesEXT, minImportedHostPointerAlignment}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceExternalMemoryHostPropertiesEXT where

#endif