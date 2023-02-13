{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkPhysicalDevice16BitStorageFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDevice16BitStorageFeatures" #-} VkPhysicalDevice16BitStorageFeatures =
       VkPhysicalDevice16BitStorageFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , storageBuffer16BitAccess :: VkBool32 -- ^ 16-bit integer/floating-point variables supported in BufferBlock
         , uniformAndStorageBuffer16BitAccess :: VkBool32 -- ^ 16-bit integer/floating-point variables supported in BufferBlock and Block
         , storagePushConstant16 :: VkBool32 -- ^ 16-bit integer/floating-point variables supported in PushConstant
         , storageInputOutput16 :: VkBool32 -- ^ 16-bit integer/floating-point variables supported in shader inputs and outputs
         }

instance Storable VkPhysicalDevice16BitStorageFeatures where
  sizeOf    _ = #{size      VkPhysicalDevice16BitStorageFeatures}
  alignment _ = #{alignment VkPhysicalDevice16BitStorageFeatures}

  peek ptr = 
    VkPhysicalDevice16BitStorageFeatures
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

instance Offset "sType" VkPhysicalDevice16BitStorageFeatures where
  rawOffset = #{offset VkPhysicalDevice16BitStorageFeatures, sType}

instance Offset "pNext" VkPhysicalDevice16BitStorageFeatures where
  rawOffset = #{offset VkPhysicalDevice16BitStorageFeatures, pNext}

instance Offset "storageBuffer16BitAccess" VkPhysicalDevice16BitStorageFeatures where
  rawOffset = #{offset VkPhysicalDevice16BitStorageFeatures, storageBuffer16BitAccess}

instance Offset "uniformAndStorageBuffer16BitAccess" VkPhysicalDevice16BitStorageFeatures where
  rawOffset = #{offset VkPhysicalDevice16BitStorageFeatures, uniformAndStorageBuffer16BitAccess}

instance Offset "storagePushConstant16" VkPhysicalDevice16BitStorageFeatures where
  rawOffset = #{offset VkPhysicalDevice16BitStorageFeatures, storagePushConstant16}

instance Offset "storageInputOutput16" VkPhysicalDevice16BitStorageFeatures where
  rawOffset = #{offset VkPhysicalDevice16BitStorageFeatures, storageInputOutput16}

#else

module Vulkan.Types.Struct.VkPhysicalDevice16BitStorageFeatures where

#endif