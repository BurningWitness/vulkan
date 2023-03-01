{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_indexing

module Vulkan.Types.Struct.VkDescriptorSetLayoutBindingFlagsCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDescriptorBindingFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDescriptorSetLayoutBindingFlagsCreateInfoEXT" #-} VkDescriptorSetLayoutBindingFlagsCreateInfoEXT =
       VkDescriptorSetLayoutBindingFlagsCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , bindingCount :: #{type uint32_t}
         , pBindingFlags :: Ptr VkDescriptorBindingFlags
         }

instance Storable VkDescriptorSetLayoutBindingFlagsCreateInfoEXT where
  sizeOf    _ = #{size      VkDescriptorSetLayoutBindingFlagsCreateInfoEXT}
  alignment _ = #{alignment VkDescriptorSetLayoutBindingFlagsCreateInfoEXT}

  peek ptr = 
    VkDescriptorSetLayoutBindingFlagsCreateInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"bindingCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pBindingFlags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"bindingCount" ptr val
    pokeField @"pBindingFlags" ptr val

instance Offset "sType" VkDescriptorSetLayoutBindingFlagsCreateInfoEXT where
  rawOffset = #{offset VkDescriptorSetLayoutBindingFlagsCreateInfoEXT, sType}

instance Offset "pNext" VkDescriptorSetLayoutBindingFlagsCreateInfoEXT where
  rawOffset = #{offset VkDescriptorSetLayoutBindingFlagsCreateInfoEXT, pNext}

instance Offset "bindingCount" VkDescriptorSetLayoutBindingFlagsCreateInfoEXT where
  rawOffset = #{offset VkDescriptorSetLayoutBindingFlagsCreateInfoEXT, bindingCount}

instance Offset "pBindingFlags" VkDescriptorSetLayoutBindingFlagsCreateInfoEXT where
  rawOffset = #{offset VkDescriptorSetLayoutBindingFlagsCreateInfoEXT, pBindingFlags}

#else

module Vulkan.Types.Struct.VkDescriptorSetLayoutBindingFlagsCreateInfoEXT where

#endif