{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
  sizeOf    _ = #{size      struct VkDescriptorSetLayoutBindingFlagsCreateInfo}
  alignment _ = #{alignment struct VkDescriptorSetLayoutBindingFlagsCreateInfo}

  peek ptr = 
    VkDescriptorSetLayoutBindingFlagsCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"bindingCount" ptr)
       <*> peek (offset @"pBindingFlags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"bindingCount" ptr val
    pokeField @"pBindingFlags" ptr val

instance Offset "sType" VkDescriptorSetLayoutBindingFlagsCreateInfo where
  rawOffset = #{offset struct VkDescriptorSetLayoutBindingFlagsCreateInfo, sType}

instance Offset "pNext" VkDescriptorSetLayoutBindingFlagsCreateInfo where
  rawOffset = #{offset struct VkDescriptorSetLayoutBindingFlagsCreateInfo, pNext}

instance Offset "bindingCount" VkDescriptorSetLayoutBindingFlagsCreateInfo where
  rawOffset = #{offset struct VkDescriptorSetLayoutBindingFlagsCreateInfo, bindingCount}

instance Offset "pBindingFlags" VkDescriptorSetLayoutBindingFlagsCreateInfo where
  rawOffset = #{offset struct VkDescriptorSetLayoutBindingFlagsCreateInfo, pBindingFlags}

#else

module Vulkan.Types.Struct.VkDescriptorSetLayoutBindingFlagsCreateInfo where

#endif