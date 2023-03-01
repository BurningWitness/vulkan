{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_16bit_storage

module Vulkan.Types.Struct.VkPhysicalDevice16BitStorageFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDevice16BitStorageFeaturesKHR" #-} VkPhysicalDevice16BitStorageFeaturesKHR =
       VkPhysicalDevice16BitStorageFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , storageBuffer16BitAccess :: VkBool32 -- ^ 16-bit integer/floating-point variables supported in BufferBlock
         , uniformAndStorageBuffer16BitAccess :: VkBool32 -- ^ 16-bit integer/floating-point variables supported in BufferBlock and Block
         , storagePushConstant16 :: VkBool32 -- ^ 16-bit integer/floating-point variables supported in PushConstant
         , storageInputOutput16 :: VkBool32 -- ^ 16-bit integer/floating-point variables supported in shader inputs and outputs
         }

instance Storable VkPhysicalDevice16BitStorageFeaturesKHR where
  sizeOf    _ = #{size      VkPhysicalDevice16BitStorageFeaturesKHR}
  alignment _ = #{alignment VkPhysicalDevice16BitStorageFeaturesKHR}

  peek ptr = 
    VkPhysicalDevice16BitStorageFeaturesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"storageBuffer16BitAccess" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"uniformAndStorageBuffer16BitAccess" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"storagePushConstant16" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"storageInputOutput16" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"storageBuffer16BitAccess" ptr val
    pokeField @"uniformAndStorageBuffer16BitAccess" ptr val
    pokeField @"storagePushConstant16" ptr val
    pokeField @"storageInputOutput16" ptr val

instance Offset "sType" VkPhysicalDevice16BitStorageFeaturesKHR where
  rawOffset = #{offset VkPhysicalDevice16BitStorageFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDevice16BitStorageFeaturesKHR where
  rawOffset = #{offset VkPhysicalDevice16BitStorageFeaturesKHR, pNext}

instance Offset "storageBuffer16BitAccess" VkPhysicalDevice16BitStorageFeaturesKHR where
  rawOffset = #{offset VkPhysicalDevice16BitStorageFeaturesKHR, storageBuffer16BitAccess}

instance Offset "uniformAndStorageBuffer16BitAccess" VkPhysicalDevice16BitStorageFeaturesKHR where
  rawOffset = #{offset VkPhysicalDevice16BitStorageFeaturesKHR, uniformAndStorageBuffer16BitAccess}

instance Offset "storagePushConstant16" VkPhysicalDevice16BitStorageFeaturesKHR where
  rawOffset = #{offset VkPhysicalDevice16BitStorageFeaturesKHR, storagePushConstant16}

instance Offset "storageInputOutput16" VkPhysicalDevice16BitStorageFeaturesKHR where
  rawOffset = #{offset VkPhysicalDevice16BitStorageFeaturesKHR, storageInputOutput16}

#else

module Vulkan.Types.Struct.VkPhysicalDevice16BitStorageFeaturesKHR where

#endif