{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_buffer

module Vulkan.Types.Struct.VkDescriptorGetInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import GHC.Records
import Vulkan.Types.Enum.VkDescriptorType
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Union.VkDescriptorDataEXT



data {-# CTYPE "vulkan/vulkan.h" "VkDescriptorGetInfoEXT" #-} VkDescriptorGetInfoEXT =
       VkDescriptorGetInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , type_ :: VkDescriptorType
         , data_ :: VkDescriptorDataEXT
         }

instance Storable VkDescriptorGetInfoEXT where
  sizeOf    _ = #{size      struct VkDescriptorGetInfoEXT}
  alignment _ = #{alignment struct VkDescriptorGetInfoEXT}

  peek ptr = 
    VkDescriptorGetInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"type" ptr)
       <*> peek (offset @"data" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"type" ptr val
    pokeField @"data" ptr val

instance Offset "sType" VkDescriptorGetInfoEXT where
  rawOffset = #{offset struct VkDescriptorGetInfoEXT, sType}

instance Offset "pNext" VkDescriptorGetInfoEXT where
  rawOffset = #{offset struct VkDescriptorGetInfoEXT, pNext}

instance Offset "type_" VkDescriptorGetInfoEXT where
  rawOffset = #{offset struct VkDescriptorGetInfoEXT, type}

instance Offset "data_" VkDescriptorGetInfoEXT where
  rawOffset = #{offset struct VkDescriptorGetInfoEXT, data}

instance Offset "type" VkDescriptorGetInfoEXT where
  rawOffset = rawOffset @"type_" @VkDescriptorGetInfoEXT

instance Offset "data" VkDescriptorGetInfoEXT where
  rawOffset = rawOffset @"data_" @VkDescriptorGetInfoEXT

instance HasField "type" VkDescriptorGetInfoEXT VkDescriptorType where
  getField = getField @"type_" @VkDescriptorGetInfoEXT

instance HasField "data" VkDescriptorGetInfoEXT VkDescriptorDataEXT where
  getField = getField @"data_" @VkDescriptorGetInfoEXT

#else

module Vulkan.Types.Struct.VkDescriptorGetInfoEXT where

#endif