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

module Vulkan.Types.Struct.VkPipelineTessellationDomainOriginStateCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkTessellationDomainOrigin



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineTessellationDomainOriginStateCreateInfo" #-} VkPipelineTessellationDomainOriginStateCreateInfo =
       VkPipelineTessellationDomainOriginStateCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , domainOrigin :: VkTessellationDomainOrigin
         }

instance Storable VkPipelineTessellationDomainOriginStateCreateInfo where
  sizeOf    _ = #{size      VkPipelineTessellationDomainOriginStateCreateInfo}
  alignment _ = #{alignment VkPipelineTessellationDomainOriginStateCreateInfo}

  peek ptr = 
    VkPipelineTessellationDomainOriginStateCreateInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"domainOrigin" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"domainOrigin" ptr val

instance Offset "sType" VkPipelineTessellationDomainOriginStateCreateInfo where
  rawOffset = #{offset VkPipelineTessellationDomainOriginStateCreateInfo, sType}

instance Offset "pNext" VkPipelineTessellationDomainOriginStateCreateInfo where
  rawOffset = #{offset VkPipelineTessellationDomainOriginStateCreateInfo, pNext}

instance Offset "domainOrigin" VkPipelineTessellationDomainOriginStateCreateInfo where
  rawOffset = #{offset VkPipelineTessellationDomainOriginStateCreateInfo, domainOrigin}

#else

module Vulkan.Types.Struct.VkPipelineTessellationDomainOriginStateCreateInfo where

#endif