{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkRenderPassCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkRenderPassCreateFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkAttachmentDescription
import Vulkan.Types.Struct.VkSubpassDependency
import Vulkan.Types.Struct.VkSubpassDescription



data {-# CTYPE "vulkan/vulkan.h" "VkRenderPassCreateInfo" #-} VkRenderPassCreateInfo =
       VkRenderPassCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkRenderPassCreateFlags
         , attachmentCount :: #{type uint32_t}
         , pAttachments :: Ptr VkAttachmentDescription
         , subpassCount :: #{type uint32_t}
         , pSubpasses :: Ptr VkSubpassDescription
         , dependencyCount :: #{type uint32_t}
         , pDependencies :: Ptr VkSubpassDependency
         }

instance Storable VkRenderPassCreateInfo where
  sizeOf    _ = #{size      VkRenderPassCreateInfo}
  alignment _ = #{alignment VkRenderPassCreateInfo}

  peek ptr = 
    VkRenderPassCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"attachmentCount" ptr)
       <*> peek (offset @"pAttachments" ptr)
       <*> peek (offset @"subpassCount" ptr)
       <*> peek (offset @"pSubpasses" ptr)
       <*> peek (offset @"dependencyCount" ptr)
       <*> peek (offset @"pDependencies" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"attachmentCount" ptr val
    pokeField @"pAttachments" ptr val
    pokeField @"subpassCount" ptr val
    pokeField @"pSubpasses" ptr val
    pokeField @"dependencyCount" ptr val
    pokeField @"pDependencies" ptr val

instance Offset "sType" VkRenderPassCreateInfo where
  rawOffset = #{offset VkRenderPassCreateInfo, sType}

instance Offset "pNext" VkRenderPassCreateInfo where
  rawOffset = #{offset VkRenderPassCreateInfo, pNext}

instance Offset "flags" VkRenderPassCreateInfo where
  rawOffset = #{offset VkRenderPassCreateInfo, flags}

instance Offset "attachmentCount" VkRenderPassCreateInfo where
  rawOffset = #{offset VkRenderPassCreateInfo, attachmentCount}

instance Offset "pAttachments" VkRenderPassCreateInfo where
  rawOffset = #{offset VkRenderPassCreateInfo, pAttachments}

instance Offset "subpassCount" VkRenderPassCreateInfo where
  rawOffset = #{offset VkRenderPassCreateInfo, subpassCount}

instance Offset "pSubpasses" VkRenderPassCreateInfo where
  rawOffset = #{offset VkRenderPassCreateInfo, pSubpasses}

instance Offset "dependencyCount" VkRenderPassCreateInfo where
  rawOffset = #{offset VkRenderPassCreateInfo, dependencyCount}

instance Offset "pDependencies" VkRenderPassCreateInfo where
  rawOffset = #{offset VkRenderPassCreateInfo, pDependencies}