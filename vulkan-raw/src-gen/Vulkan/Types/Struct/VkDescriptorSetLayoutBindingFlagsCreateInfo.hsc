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

module Vulkan.Types.Struct.VkDescriptorSetLayoutBindingFlagsCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDescriptorBindingFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDescriptorSetLayoutBindingFlagsCreateInfo" #-} VkDescriptorSetLayoutBindingFlagsCreateInfo =
       VkDescriptorSetLayoutBindingFlagsCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , bindingCount :: #{type uint32_t}
         , pBindingFlags :: Ptr VkDescriptorBindingFlags
         }

instance Storable VkDescriptorSetLayoutBindingFlagsCreateInfo where
  sizeOf    _ = #{size      VkDescriptorSetLayoutBindingFlagsCreateInfo}
  alignment _ = #{alignment VkDescriptorSetLayoutBindingFlagsCreateInfo}

  peek ptr = 
    VkDescriptorSetLayoutBindingFlagsCreateInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"bindingCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pBindingFlags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"bindingCount" ptr val
    pokeField @"pBindingFlags" ptr val

instance Offset "sType" VkDescriptorSetLayoutBindingFlagsCreateInfo where
  rawOffset = #{offset VkDescriptorSetLayoutBindingFlagsCreateInfo, sType}

instance Offset "pNext" VkDescriptorSetLayoutBindingFlagsCreateInfo where
  rawOffset = #{offset VkDescriptorSetLayoutBindingFlagsCreateInfo, pNext}

instance Offset "bindingCount" VkDescriptorSetLayoutBindingFlagsCreateInfo where
  rawOffset = #{offset VkDescriptorSetLayoutBindingFlagsCreateInfo, bindingCount}

instance Offset "pBindingFlags" VkDescriptorSetLayoutBindingFlagsCreateInfo where
  rawOffset = #{offset VkDescriptorSetLayoutBindingFlagsCreateInfo, pBindingFlags}

#else

module Vulkan.Types.Struct.VkDescriptorSetLayoutBindingFlagsCreateInfo where

#endif