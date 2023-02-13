{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_color_write_enable

module Vulkan.Types.Struct.VkPipelineColorWriteCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineColorWriteCreateInfoEXT" #-} VkPipelineColorWriteCreateInfoEXT =
       VkPipelineColorWriteCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , attachmentCount :: #{type uint32_t} -- ^ # of pAttachments
         , pColorWriteEnables :: Ptr VkBool32
         }

instance Storable VkPipelineColorWriteCreateInfoEXT where
  sizeOf    _ = #{size      VkPipelineColorWriteCreateInfoEXT}
  alignment _ = #{alignment VkPipelineColorWriteCreateInfoEXT}

  peek ptr = 
    VkPipelineColorWriteCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"attachmentCount" ptr)
       <*> peek (offset @"pColorWriteEnables" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"attachmentCount" ptr val
    pokeField @"pColorWriteEnables" ptr val

instance Offset "sType" VkPipelineColorWriteCreateInfoEXT where
  rawOffset = #{offset VkPipelineColorWriteCreateInfoEXT, sType}

instance Offset "pNext" VkPipelineColorWriteCreateInfoEXT where
  rawOffset = #{offset VkPipelineColorWriteCreateInfoEXT, pNext}

instance Offset "attachmentCount" VkPipelineColorWriteCreateInfoEXT where
  rawOffset = #{offset VkPipelineColorWriteCreateInfoEXT, attachmentCount}

instance Offset "pColorWriteEnables" VkPipelineColorWriteCreateInfoEXT where
  rawOffset = #{offset VkPipelineColorWriteCreateInfoEXT, pColorWriteEnables}

#else

module Vulkan.Types.Struct.VkPipelineColorWriteCreateInfoEXT where

#endif