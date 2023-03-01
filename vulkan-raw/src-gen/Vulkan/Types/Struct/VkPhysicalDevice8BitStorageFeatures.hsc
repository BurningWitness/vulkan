{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkPhysicalDevice8BitStorageFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDevice8BitStorageFeatures" #-} VkPhysicalDevice8BitStorageFeatures =
       VkPhysicalDevice8BitStorageFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , storageBuffer8BitAccess :: VkBool32 -- ^ 8-bit integer variables supported in StorageBuffer
         , uniformAndStorageBuffer8BitAccess :: VkBool32 -- ^ 8-bit integer variables supported in StorageBuffer and Uniform
         , storagePushConstant8 :: VkBool32 -- ^ 8-bit integer variables supported in PushConstant
         }

instance Storable VkPhysicalDevice8BitStorageFeatures where
  sizeOf    _ = #{size      VkPhysicalDevice8BitStorageFeatures}
  alignment _ = #{alignment VkPhysicalDevice8BitStorageFeatures}

  peek ptr = 
    VkPhysicalDevice8BitStorageFeatures
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

instance Offset "sType" VkPhysicalDevice8BitStorageFeatures where
  rawOffset = #{offset VkPhysicalDevice8BitStorageFeatures, sType}

instance Offset "pNext" VkPhysicalDevice8BitStorageFeatures where
  rawOffset = #{offset VkPhysicalDevice8BitStorageFeatures, pNext}

instance Offset "storageBuffer8BitAccess" VkPhysicalDevice8BitStorageFeatures where
  rawOffset = #{offset VkPhysicalDevice8BitStorageFeatures, storageBuffer8BitAccess}

instance Offset "uniformAndStorageBuffer8BitAccess" VkPhysicalDevice8BitStorageFeatures where
  rawOffset = #{offset VkPhysicalDevice8BitStorageFeatures, uniformAndStorageBuffer8BitAccess}

instance Offset "storagePushConstant8" VkPhysicalDevice8BitStorageFeatures where
  rawOffset = #{offset VkPhysicalDevice8BitStorageFeatures, storagePushConstant8}

#else

module Vulkan.Types.Struct.VkPhysicalDevice8BitStorageFeatures where

#endif