{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_8bit_storage

module Vulkan.Types.Struct.VkPhysicalDevice8BitStorageFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDevice8BitStorageFeaturesKHR" #-} VkPhysicalDevice8BitStorageFeaturesKHR =
       VkPhysicalDevice8BitStorageFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , storageBuffer8BitAccess :: VkBool32 -- ^ 8-bit integer variables supported in StorageBuffer
         , uniformAndStorageBuffer8BitAccess :: VkBool32 -- ^ 8-bit integer variables supported in StorageBuffer and Uniform
         , storagePushConstant8 :: VkBool32 -- ^ 8-bit integer variables supported in PushConstant
         }

instance Storable VkPhysicalDevice8BitStorageFeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDevice8BitStorageFeaturesKHR}
  alignment _ = #{alignment VkPhysicalDevice8BitStorageFeaturesKHR}

  peek ptr = 
    VkPhysicalDevice8BitStorageFeaturesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"storageBuffer8BitAccess" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"uniformAndStorageBuffer8BitAccess" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"storagePushConstant8" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"storageBuffer8BitAccess" ptr val
    pokeField @"uniformAndStorageBuffer8BitAccess" ptr val
    pokeField @"storagePushConstant8" ptr val

instance Offset "sType" VkPhysicalDevice8BitStorageFeaturesKHR where
  rawOffset = #{offset VkPhysicalDevice8BitStorageFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDevice8BitStorageFeaturesKHR where
  rawOffset = #{offset VkPhysicalDevice8BitStorageFeaturesKHR, pNext}

instance Offset "storageBuffer8BitAccess" VkPhysicalDevice8BitStorageFeaturesKHR where
  rawOffset = #{offset VkPhysicalDevice8BitStorageFeaturesKHR, storageBuffer8BitAccess}

instance Offset "uniformAndStorageBuffer8BitAccess" VkPhysicalDevice8BitStorageFeaturesKHR where
  rawOffset = #{offset VkPhysicalDevice8BitStorageFeaturesKHR, uniformAndStorageBuffer8BitAccess}

instance Offset "storagePushConstant8" VkPhysicalDevice8BitStorageFeaturesKHR where
  rawOffset = #{offset VkPhysicalDevice8BitStorageFeaturesKHR, storagePushConstant8}

#else

module Vulkan.Types.Struct.VkPhysicalDevice8BitStorageFeaturesKHR where

#endif