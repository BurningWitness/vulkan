{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkDescriptorSetAllocateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkDescriptorSetAllocateInfo" #-} VkDescriptorSetAllocateInfo =
       VkDescriptorSetAllocateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , descriptorPool :: VkDescriptorPool
         , descriptorSetCount :: #{type uint32_t}
         , pSetLayouts :: Ptr VkDescriptorSetLayout
         }

instance Storable VkDescriptorSetAllocateInfo where
  sizeOf    _ = #{size      VkDescriptorSetAllocateInfo}
  alignment _ = #{alignment VkDescriptorSetAllocateInfo}

  peek ptr = 
    VkDescriptorSetAllocateInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorPool" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorSetCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pSetLayouts" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"descriptorPool" ptr val
    pokeField @"descriptorSetCount" ptr val
    pokeField @"pSetLayouts" ptr val

instance Offset "sType" VkDescriptorSetAllocateInfo where
  rawOffset = #{offset VkDescriptorSetAllocateInfo, sType}

instance Offset "pNext" VkDescriptorSetAllocateInfo where
  rawOffset = #{offset VkDescriptorSetAllocateInfo, pNext}

instance Offset "descriptorPool" VkDescriptorSetAllocateInfo where
  rawOffset = #{offset VkDescriptorSetAllocateInfo, descriptorPool}

instance Offset "descriptorSetCount" VkDescriptorSetAllocateInfo where
  rawOffset = #{offset VkDescriptorSetAllocateInfo, descriptorSetCount}

instance Offset "pSetLayouts" VkDescriptorSetAllocateInfo where
  rawOffset = #{offset VkDescriptorSetAllocateInfo, pSetLayouts}