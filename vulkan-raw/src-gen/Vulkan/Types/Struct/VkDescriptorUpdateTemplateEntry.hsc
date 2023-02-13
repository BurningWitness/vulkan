{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkDescriptorUpdateTemplateEntry where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDescriptorType



data {-# CTYPE "vulkan/vulkan.h" "VkDescriptorUpdateTemplateEntry" #-} VkDescriptorUpdateTemplateEntry =
       VkDescriptorUpdateTemplateEntry
         { dstBinding :: #{type uint32_t} -- ^ Binding within the destination descriptor set to write
         , dstArrayElement :: #{type uint32_t} -- ^ Array element within the destination binding to write
         , descriptorCount :: #{type uint32_t} -- ^ Number of descriptors to write
         , descriptorType :: VkDescriptorType -- ^ Descriptor type to write
         , offset :: #{type size_t} -- ^ Offset into pData where the descriptors to update are stored
         , stride :: #{type size_t} -- ^ Stride between two descriptors in pData when writing more than one descriptor
         }

instance Storable VkDescriptorUpdateTemplateEntry where
  sizeOf    _ = #{size      VkDescriptorUpdateTemplateEntry}
  alignment _ = #{alignment VkDescriptorUpdateTemplateEntry}

  peek ptr = 
    VkDescriptorUpdateTemplateEntry
       <$> peek (offset @"dstBinding" ptr)
       <*> peek (offset @"dstArrayElement" ptr)
       <*> peek (offset @"descriptorCount" ptr)
       <*> peek (offset @"descriptorType" ptr)
       <*> peek (offset @"offset" ptr)
       <*> peek (offset @"stride" ptr)

  poke ptr val = do
    pokeField @"dstBinding" ptr val
    pokeField @"dstArrayElement" ptr val
    pokeField @"descriptorCount" ptr val
    pokeField @"descriptorType" ptr val
    pokeField @"offset" ptr val
    pokeField @"stride" ptr val

instance Offset "dstBinding" VkDescriptorUpdateTemplateEntry where
  rawOffset = #{offset VkDescriptorUpdateTemplateEntry, dstBinding}

instance Offset "dstArrayElement" VkDescriptorUpdateTemplateEntry where
  rawOffset = #{offset VkDescriptorUpdateTemplateEntry, dstArrayElement}

instance Offset "descriptorCount" VkDescriptorUpdateTemplateEntry where
  rawOffset = #{offset VkDescriptorUpdateTemplateEntry, descriptorCount}

instance Offset "descriptorType" VkDescriptorUpdateTemplateEntry where
  rawOffset = #{offset VkDescriptorUpdateTemplateEntry, descriptorType}

instance Offset "offset" VkDescriptorUpdateTemplateEntry where
  rawOffset = #{offset VkDescriptorUpdateTemplateEntry, offset}

instance Offset "stride" VkDescriptorUpdateTemplateEntry where
  rawOffset = #{offset VkDescriptorUpdateTemplateEntry, stride}

#else

module Vulkan.Types.Struct.VkDescriptorUpdateTemplateEntry where

#endif