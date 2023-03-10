{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkDescriptorSetLayoutSupport where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDescriptorSetLayoutSupport" #-} VkDescriptorSetLayoutSupport =
       VkDescriptorSetLayoutSupport
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , supported :: VkBool32
         }

instance Storable VkDescriptorSetLayoutSupport where
  sizeOf    _ = #{size      VkDescriptorSetLayoutSupport}
  alignment _ = #{alignment VkDescriptorSetLayoutSupport}

  peek ptr = 
    VkDescriptorSetLayoutSupport
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"supported" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"supported" ptr val

instance Offset "sType" VkDescriptorSetLayoutSupport where
  rawOffset = #{offset VkDescriptorSetLayoutSupport, sType}

instance Offset "pNext" VkDescriptorSetLayoutSupport where
  rawOffset = #{offset VkDescriptorSetLayoutSupport, pNext}

instance Offset "supported" VkDescriptorSetLayoutSupport where
  rawOffset = #{offset VkDescriptorSetLayoutSupport, supported}

#else

module Vulkan.Types.Struct.VkDescriptorSetLayoutSupport where

#endif